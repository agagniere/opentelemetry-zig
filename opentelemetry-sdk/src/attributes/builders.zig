//! Compile-time conversion of struct literals into attribute lists.
//!
//! Signals take attributes as a `[]const Attribute`, which is verbose to write by hand.
//! `flatten` builds that list from a struct literal instead, turning nested literals into
//! the dot-delimited keys the semantic conventions use.

const std = @import("std");

const Attribute = @import("../attributes.zig").Attribute;
const AttributeValue = @import("../attributes.zig").AttributeValue;

/// Converts a struct literal field value into an AttributeValue.
/// Only the types that an OTel attribute can hold are accepted, anything else is
/// a compile error at the call site.
fn fieldToAttributeValue(v: anytype) AttributeValue {
    const T = @TypeOf(v);
    return switch (@typeInfo(T)) {
        .pointer => |p| switch (p.size) {
            .slice => if (p.child == u8)
                .{ .string = v }
            else
                @compileError("unsupported slice type for attribute value: " ++ @typeName(T)),
            .one => switch (@typeInfo(p.child)) {
                .array => |a| if (a.child == u8)
                    .{ .string = v } // *const [N:0]u8 string literal
                else
                    @compileError("unsupported array type for attribute value: " ++ @typeName(T)),
                else => @compileError("unsupported pointer type for attribute value: " ++ @typeName(T)),
            },
            else => @compileError("unsupported pointer type for attribute value: " ++ @typeName(T)),
        },
        .bool => .{ .bool = v },
        .int, .comptime_int => .{ .int = @intCast(v) },
        .float, .comptime_float => .{ .double = @floatCast(v) },
        else => @compileError("unsupported type for attribute value: " ++ @typeName(T)),
    };
}

/// Whether `T` is a struct with named fields, the shape `flatten` walks into.
/// Tuples with fields are not: their field names are "0", "1", ... which would make
/// meaningless attribute keys. `.{}` is both an empty struct and an empty tuple, so
/// an empty tuple counts here and yields no attributes.
fn isNamedStruct(comptime T: type) bool {
    return switch (@typeInfo(T)) {
        .@"struct" => |s| !s.is_tuple or s.fields.len == 0,
        else => false,
    };
}

fn namedFields(comptime T: type) []const std.builtin.Type.StructField {
    if (comptime !isNamedStruct(T)) {
        @compileError("expected a struct literal with named fields, found " ++ @typeName(T));
    }
    return @typeInfo(T).@"struct".fields;
}

/// Number of attributes `flatten` produces for the struct type `T`: one per leaf
/// field, counting nested structs recursively.
pub fn flatCount(comptime T: type) usize {
    comptime var count: usize = 0;
    inline for (comptime namedFields(T)) |field| {
        count += if (comptime isNamedStruct(field.type)) flatCount(field.type) else 1;
    }
    return count;
}

fn flattenInto(comptime prefix: []const u8, data: anytype, out: []Attribute, next: *usize) void {
    inline for (comptime namedFields(@TypeOf(data))) |field| {
        const key = comptime if (prefix.len == 0) field.name else prefix ++ "." ++ field.name;
        const value = @field(data, field.name);
        if (comptime isNamedStruct(@TypeOf(value))) {
            flattenInto(key, value, out, next);
        } else {
            out[next.*] = .{ .key = key, .value = fieldToAttributeValue(value) };
            next.* += 1;
        }
    }
}

/// Builds an attribute list from a struct literal, without allocating.
///
/// Nested struct literals are flattened into dot-delimited keys at compile time, which
/// is the naming style the semantic conventions use:
/// ```zig
/// const attrs = flatten(.{
///     .http = .{ .request = .{ .method = "GET" }, .response = .{ .status_code = 200 } },
/// });
/// // { "http.request.method" = "GET", "http.response.status_code" = 200 }
/// ```
/// Field values must be a `[]const u8`, a `bool`, an integer or a float; anything else is
/// a compile error. Note that map-valued attributes, which the specification allows, are
/// not representable by `AttributeValue`, and the semantic conventions recommend flat
/// attributes anyway: see https://opentelemetry.io/docs/specs/semconv/general/naming/
///
/// Keys are compile-time strings and live for the whole program, string values are
/// borrowed from `data` and not copied. The returned array is owned by the caller and
/// must outlive every use of the attributes it holds. Taking its address inline, as in
/// `.attributes = &flatten(.{ ... })`, is enough for a call that consumes the attributes
/// before it returns.
pub fn flatten(data: anytype) [flatCount(@TypeOf(data))]Attribute {
    var attrs: [flatCount(@TypeOf(data))]Attribute = undefined;
    var next: usize = 0;
    flattenInto("", data, &attrs, &next);
    return attrs;
}

test "flatten nests struct literals into dot-delimited keys" {
    const attrs = flatten(.{
        .http = .{
            .request = .{ .method = "GET" },
            .response = .{ .status_code = 200 },
        },
        .server = .{ .address = "example.com" },
        .duration_ms = 12.5,
        .cached = true,
    });

    try std.testing.expectEqual(@as(usize, 5), attrs.len);
    try std.testing.expectEqualStrings("http.request.method", attrs[0].key);
    try std.testing.expectEqualStrings("GET", attrs[0].value.string);
    try std.testing.expectEqualStrings("http.response.status_code", attrs[1].key);
    try std.testing.expectEqual(@as(i64, 200), attrs[1].value.int);
    try std.testing.expectEqualStrings("server.address", attrs[2].key);
    try std.testing.expectEqualStrings("example.com", attrs[2].value.string);
    try std.testing.expectEqualStrings("duration_ms", attrs[3].key);
    try std.testing.expectEqual(@as(f64, 12.5), attrs[3].value.double);
    try std.testing.expectEqualStrings("cached", attrs[4].key);
    try std.testing.expectEqual(true, attrs[4].value.bool);

    // The result coerces to the slice type the signals take.
    const slice: []const Attribute = &attrs;
    try std.testing.expectEqual(@as(usize, 5), slice.len);
}

test "flatten accepts runtime values" {
    const items = [_]u8{ 1, 2, 3 };
    var status: u16 = 0;
    status = 503;
    const reason: []const u8 = "upstream timeout";
    const ratio: f32 = 0.5;

    const attrs = flatten(.{
        .count = items.len, // usize
        .status = status,
        .reason = reason,
        .ratio = ratio,
    });

    try std.testing.expectEqual(@as(i64, 3), attrs[0].value.int);
    try std.testing.expectEqual(@as(i64, 503), attrs[1].value.int);
    try std.testing.expectEqualStrings("upstream timeout", attrs[2].value.string);
    try std.testing.expectEqual(@as(f64, 0.5), attrs[3].value.double);
}

test "flatten of an empty struct literal is empty" {
    const attrs = flatten(.{});
    try std.testing.expectEqual(@as(usize, 0), attrs.len);
    try std.testing.expectEqual(@as(usize, 0), flatCount(@TypeOf(.{})));
}
