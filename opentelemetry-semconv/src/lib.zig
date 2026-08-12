//! OpenTelemetry semantic conventions are agreed standardized naming patterns
//! for OpenTelemetry things. This module aims to be the centralized place to
//! interact with these conventions.
//!
//! Generated from OpenTelemetry semantic conventions specification.

pub const attribute = @import("attribute.zig");
pub const metric = @import("metric.zig");
pub const resource = @import("resource.zig");
pub const trace = @import("trace.zig");
pub const types = @import("types.zig");

/// The schema URL that matches the version of the semantic conventions that
/// this module defines.
pub const SCHEMA_URL: []const u8 = "https://opentelemetry.io/schemas/1.36.0";

test "semantic conventions" {
    @import("std").testing.refAllDecls(@This());
}
