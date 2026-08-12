//! Advanced example showing how to use the type system to filter
//! attributes and metrics based on stability levels

const std = @import("std");
const semconv = @import("opentelemetry-semconv");

pub fn main() !void {
    // Example 1: Using stability information to filter attributes

    // Stable attribute
    const http_method = semconv.attribute.http_request_method;
    std.debug.assert(http_method.base.stability == .stable);

    // Experimental attribute
    const android_state = semconv.attribute.android_app_state;
    std.debug.assert(android_state.base.stability == .development);

    // Example 2: Checking requirement levels
    const service_name = semconv.resource.service_name;
    std.debug.assert(service_name.requirement_level == .required);

    // Example 3: Working with enum attributes and their values
    const http_method_enum = semconv.attribute.http_request_method;
    std.debug.assert(std.mem.eql(u8, http_method_enum.base.name, "http.request.method"));

    const methods = [_]@TypeOf(semconv.attribute.http_request_methodValue.get){
        semconv.attribute.http_request_methodValue.get,
        semconv.attribute.http_request_methodValue.post,
        semconv.attribute.http_request_methodValue.put,
        semconv.attribute.http_request_methodValue.delete,
    };

    std.debug.assert(std.mem.eql(u8, methods[0].toString(), "GET"));
    std.debug.assert(std.mem.eql(u8, methods[1].toString(), "POST"));
    std.debug.assert(std.mem.eql(u8, methods[2].toString(), "PUT"));
    std.debug.assert(std.mem.eql(u8, methods[3].toString(), "DELETE"));

    // Example 4: Accessing metric metadata
    const http_duration = semconv.metric.http_server_request_duration;
    std.debug.assert(std.mem.eql(u8, http_duration.name, "http.server.request.duration"));
    std.debug.assert(http_duration.instrument == .histogram);
    std.debug.assert(std.mem.eql(u8, http_duration.unit, "s"));
    std.debug.assert(http_duration.stability == .stable);
    std.debug.assert(http_duration.value_type == .double);

    // Example 5: Runtime stability check

    // Check stability of enum attributes (with .base field)
    const http_method_attr = semconv.attribute.http_request_method;
    std.debug.assert(http_method_attr.base.stability == .stable);

    // Check stability of regular attributes (without .base field)
    const http_status_attr = semconv.attribute.http_response_status_code;
    std.debug.assert(http_status_attr.stability == .stable);

    const http_route_attr = semconv.attribute.http_route;
    std.debug.assert(http_route_attr.stability == .stable);

    // Example 6: Working with enum vs simple attributes

    // Enum attributes have both .base and well_known_values
    std.debug.assert(std.mem.eql(u8, semconv.attribute.jvm_memory_type.base.name, "jvm.memory.type"));
    std.debug.assert(std.mem.eql(u8, semconv.attribute.jvm_memory_typeValue.heap.toString(), "heap"));
    std.debug.assert(std.mem.eql(u8, semconv.attribute.jvm_memory_typeValue.non_heap.toString(), "non_heap"));

    // Simple attributes only have the attribute fields directly
    const db_name = semconv.attribute.db_name;
    std.debug.assert(std.mem.eql(u8, db_name.name, "db.name"));
    std.debug.assert(db_name.stability == .development);
}
