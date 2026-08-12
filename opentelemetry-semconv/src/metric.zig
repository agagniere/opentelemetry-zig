// DO NOT EDIT, this is an auto-generated file
//
// If you want to update the file:
// - Edit the template at scripts/templates/registry/zig/metric.zig.j2
// - Run the script at scripts/generate-consts-from-spec.sh

//! # Semantic Metrics
//!
//! The entire set of semantic metrics (or [conventions](https://opentelemetry.io/docs/concepts/semantic-conventions/)) defined by the project.

const std = @import("std");
const types = @import("types.zig");

/// Number of exceptions caught by exception handling middleware.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Diagnostics`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{exception}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.diagnostics.exception.result` | `Required` |
/// | `aspnetcore.diagnostics.handler.type` | `Conditionally_required`: if and only if the exception was handled by this handler. |
/// | `error.type` | `Required` |
pub const aspnetcore_diagnostics_exceptions = types.Metric{
    .name = "aspnetcore.diagnostics.exceptions",
    .brief = "Number of exceptions caught by exception handling middleware.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{exception}",
    .value_type = .double,
};

/// Number of requests that are currently active on the server that hold a rate limiting lease.
///
/// Notes: Meter name: `Microsoft.AspNetCore.RateLimiting`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.rate_limiting.policy` | `Conditionally_required`: if the matched endpoint for the request had a rate-limiting policy. |
pub const aspnetcore_rate_limiting_active_request_leases = types.Metric{
    .name = "aspnetcore.rate_limiting.active_request_leases",
    .brief = "Number of requests that are currently active on the server that hold a rate limiting lease.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
};

/// Number of requests that are currently queued, waiting to acquire a rate limiting lease.
///
/// Notes: Meter name: `Microsoft.AspNetCore.RateLimiting`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.rate_limiting.policy` | `Conditionally_required`: if the matched endpoint for the request had a rate-limiting policy. |
pub const aspnetcore_rate_limiting_queued_requests = types.Metric{
    .name = "aspnetcore.rate_limiting.queued_requests",
    .brief = "Number of requests that are currently queued, waiting to acquire a rate limiting lease.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
};

/// The time the request spent in a queue waiting to acquire a rate limiting lease.
///
/// Notes: Meter name: `Microsoft.AspNetCore.RateLimiting`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.rate_limiting.policy` | `Conditionally_required`: if the matched endpoint for the request had a rate-limiting policy. |
/// | `aspnetcore.rate_limiting.result` | `Required` |
pub const aspnetcore_rate_limiting_request_time_in_queue = types.Metric{
    .name = "aspnetcore.rate_limiting.request.time_in_queue",
    .brief = "The time the request spent in a queue waiting to acquire a rate limiting lease.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The duration of rate limiting lease held by requests on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.RateLimiting`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.rate_limiting.policy` | `Conditionally_required`: if the matched endpoint for the request had a rate-limiting policy. |
pub const aspnetcore_rate_limiting_request_lease_duration = types.Metric{
    .name = "aspnetcore.rate_limiting.request_lease.duration",
    .brief = "The duration of rate limiting lease held by requests on the server.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of requests that tried to acquire a rate limiting lease.
///
/// Notes: Requests could be: * Rejected by global or endpoint rate limiting policies * Canceled while waiting for the lease. Meter name: `Microsoft.AspNetCore.RateLimiting`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{request}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.rate_limiting.policy` | `Conditionally_required`: if the matched endpoint for the request had a rate-limiting policy. |
/// | `aspnetcore.rate_limiting.result` | `Required` |
pub const aspnetcore_rate_limiting_requests = types.Metric{
    .name = "aspnetcore.rate_limiting.requests",
    .brief = "Number of requests that tried to acquire a rate limiting lease.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{request}",
    .value_type = .double,
};

/// Number of requests that were attempted to be matched to an endpoint.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Routing`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{match_attempt}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `aspnetcore.routing.is_fallback` | `Conditionally_required`: if and only if a route was successfully matched. |
/// | `aspnetcore.routing.match_status` | `Required` |
/// | `http.route` | `Conditionally_required`: if and only if a route was successfully matched. |
pub const aspnetcore_routing_match_attempts = types.Metric{
    .name = "aspnetcore.routing.match_attempts",
    .brief = "Number of requests that were attempted to be matched to an endpoint.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{match_attempt}",
    .value_type = .double,
};

/// Number of active client instances
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{instance}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If using a port other than the default port for this DBMS and if `server.address` is set. |
pub const azure_cosmosdb_client_active_instance_count = types.Metric{
    .name = "azure.cosmosdb.client.active_instance.count",
    .brief = "Number of active client instances",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{instance}",
    .value_type = .double,
};

/// [Request units](https://learn.microsoft.com/azure/cosmos-db/request-units) consumed by the operation
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{request_unit}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `azure.cosmosdb.consistency.level` | `Conditionally_required`: If available. |
/// | `azure.cosmosdb.operation.contacted_regions` | `{"recommended": "if available"}` |
/// | `azure.cosmosdb.response.sub_status_code` | `Conditionally_required`: when response was received and contained sub-code. |
/// | `db.collection.name` | `Conditionally_required`: If available. |
/// | `db.namespace` | `Conditionally_required`: If available. |
/// | `db.operation.name` | `Required` |
/// | `db.response.status_code` | `Conditionally_required`: If the operation failed and status code is available. |
/// | `error.type` | `Conditionally_required`: If and only if the operation failed. |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If using a port other than the default port for this DBMS and if `server.address` is set. |
pub const azure_cosmosdb_client_operation_request_charge = types.Metric{
    .name = "azure.cosmosdb.client.operation.request_charge",
    .brief = "[Request units](https://learn.microsoft.com/azure/cosmos-db/request-units) consumed by the operation",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{request_unit}",
    .value_type = .double,
};

/// The number of pipeline runs currently active in the system by state.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{run}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cicd.pipeline.name` | `Required` |
/// | `cicd.pipeline.run.state` | `Required` |
pub const cicd_pipeline_run_active = types.Metric{
    .name = "cicd.pipeline.run.active",
    .brief = "The number of pipeline runs currently active in the system by state.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{run}",
    .value_type = .double,
};

/// Duration of a pipeline run grouped by pipeline, state and result.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cicd.pipeline.name` | `Required` |
/// | `cicd.pipeline.result` | `Conditionally_required`: If and only if the pipeline run result has been set during that state. |
/// | `cicd.pipeline.run.state` | `Required` |
/// | `error.type` | `Conditionally_required`: If and only if the pipeline run failed. |
pub const cicd_pipeline_run_duration = types.Metric{
    .name = "cicd.pipeline.run.duration",
    .brief = "Duration of a pipeline run grouped by pipeline, state and result.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The number of errors encountered in pipeline runs (eg. compile, test failures).
///
/// Notes: There might be errors in a pipeline run that are non fatal (eg. they are suppressed) or in a parallel stage multiple stages could have a fatal error. This means that this error count might not be the same as the count of metric `cicd.pipeline.run.duration` with run result `failure`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cicd.pipeline.name` | `Required` |
/// | `error.type` | `Required` |
pub const cicd_pipeline_run_errors = types.Metric{
    .name = "cicd.pipeline.run.errors",
    .brief = "The number of errors encountered in pipeline runs (eg. compile, test failures).",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

/// The number of errors in a component of the CICD system (eg. controller, scheduler, agent).
///
/// Notes: Errors in pipeline run execution are explicitly excluded. Ie a test failure is not counted in this metric.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cicd.system.component` | `Required` |
/// | `error.type` | `Required` |
pub const cicd_system_errors = types.Metric{
    .name = "cicd.system.errors",
    .brief = "The number of errors in a component of the CICD system (eg. controller, scheduler, agent).",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

/// The number of workers on the CICD system by state.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{count}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cicd.worker.state` | `Required` |
pub const cicd_worker_count = types.Metric{
    .name = "cicd.worker.count",
    .brief = "The number of workers on the CICD system by state.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{count}",
    .value_type = .double,
};

/// Total CPU time consumed
///
/// Notes: Total CPU time consumed by the specific container on all available CPU cores
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.mode` | `Conditionally_required`: Required if mode is available, i.e. metrics coming from the Docker Stats API. |
pub const container_cpu_time = types.Metric{
    .name = "container.cpu.time",
    .brief = "Total CPU time consumed",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Container's CPU usage, measured in cpus. Range from 0 to the number of allocatable CPUs
///
/// Notes: CPU usage of the specific container on all available CPU cores, averaged over the sample window
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{cpu}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.mode` | `Conditionally_required`: Required if mode is available, i.e. metrics coming from the Docker Stats API. |
pub const container_cpu_usage = types.Metric{
    .name = "container.cpu.usage",
    .brief = "Container's CPU usage, measured in cpus. Range from 0 to the number of allocatable CPUs",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Disk bytes for the container.
///
/// Notes: The total number of bytes read/written successfully (aggregated from all disks).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `disk.io.direction` | `Recommended` |
/// | `system.device` | `Recommended` |
pub const container_disk_io = types.Metric{
    .name = "container.disk.io",
    .brief = "Disk bytes for the container.",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// Memory usage of the container.
///
/// Notes: Memory usage of the container.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
pub const container_memory_usage = types.Metric{
    .name = "container.memory.usage",
    .brief = "Memory usage of the container.",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// Network bytes for the container.
///
/// Notes: The number of bytes sent/received on all network interfaces by the container.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const container_network_io = types.Metric{
    .name = "container.network.io",
    .brief = "Network bytes for the container.",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// The time the container has been running
///
/// Notes: Instrumentations SHOULD use a gauge with type `double` and measure uptime in seconds as a floating point number with the highest precision available. The actual accuracy would depend on the instrumentation and operating system.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const container_uptime = types.Metric{
    .name = "container.uptime",
    .brief = "The time the container has been running",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Deprecated. Use `system.cpu.frequency` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{Hz}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `system.cpu.frequency`.
pub const cpu_frequency = types.Metric{
    .name = "cpu.frequency",
    .brief = "Deprecated. Use `system.cpu.frequency` instead.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{Hz}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `system.cpu.frequency`.",
};

/// Deprecated. Use `system.cpu.time` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.logical_number` | `Recommended` |
/// | `cpu.mode` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `system.cpu.time`.
pub const cpu_time = types.Metric{
    .name = "cpu.time",
    .brief = "Deprecated. Use `system.cpu.time` instead.",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
    .deprecated_reason = "Replaced by `system.cpu.time`.",
};

/// Deprecated. Use `system.cpu.utilization` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.logical_number` | `Recommended` |
/// | `cpu.mode` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `system.cpu.utilization`.
pub const cpu_utilization = types.Metric{
    .name = "cpu.utilization",
    .brief = "Deprecated. Use `system.cpu.utilization` instead.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
    .deprecated_reason = "Replaced by `system.cpu.utilization`.",
};

/// The total number of objects collected inside a generation since interpreter start.
///
/// Notes: This metric reports data from [`gc.stats()`](https://docs.python.org/3/library/gc.html#gc.get_stats).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{object}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpython.gc.generation` | `Required` |
pub const cpython_gc_collected_objects = types.Metric{
    .name = "cpython.gc.collected_objects",
    .brief = "The total number of objects collected inside a generation since interpreter start.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{object}",
    .value_type = .double,
};

/// The number of times a generation was collected since interpreter start.
///
/// Notes: This metric reports data from [`gc.stats()`](https://docs.python.org/3/library/gc.html#gc.get_stats).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{collection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpython.gc.generation` | `Required` |
pub const cpython_gc_collections = types.Metric{
    .name = "cpython.gc.collections",
    .brief = "The number of times a generation was collected since interpreter start.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{collection}",
    .value_type = .double,
};

/// The total number of objects which were found to be uncollectable inside a generation since interpreter start.
///
/// Notes: This metric reports data from [`gc.stats()`](https://docs.python.org/3/library/gc.html#gc.get_stats).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{object}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpython.gc.generation` | `Required` |
pub const cpython_gc_uncollectable_objects = types.Metric{
    .name = "cpython.gc.uncollectable_objects",
    .brief = "The total number of objects which were found to be uncollectable inside a generation since interpreter start.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{object}",
    .value_type = .double,
};

/// The number of connections that are currently in state described by the `state` attribute
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
/// | `db.client.connection.state` | `Required` |
pub const db_client_connection_count = types.Metric{
    .name = "db.client.connection.count",
    .brief = "The number of connections that are currently in state described by the `state` attribute",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// The time it took to create a new connection
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_create_time = types.Metric{
    .name = "db.client.connection.create_time",
    .brief = "The time it took to create a new connection",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The maximum number of idle open connections allowed
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_idle_max = types.Metric{
    .name = "db.client.connection.idle.max",
    .brief = "The maximum number of idle open connections allowed",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// The minimum number of idle open connections allowed
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_idle_min = types.Metric{
    .name = "db.client.connection.idle.min",
    .brief = "The minimum number of idle open connections allowed",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// The maximum number of open connections allowed
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_max = types.Metric{
    .name = "db.client.connection.max",
    .brief = "The maximum number of open connections allowed",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// The number of current pending requests for an open connection
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_pending_requests = types.Metric{
    .name = "db.client.connection.pending_requests",
    .brief = "The number of current pending requests for an open connection",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
};

/// The number of connection timeouts that have occurred trying to obtain a connection from the pool
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{timeout}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_timeouts = types.Metric{
    .name = "db.client.connection.timeouts",
    .brief = "The number of connection timeouts that have occurred trying to obtain a connection from the pool",
    .stability = .development,
    .instrument = .counter,
    .unit = "{timeout}",
    .value_type = .double,
};

/// The time between borrowing a connection and returning it to the pool
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_use_time = types.Metric{
    .name = "db.client.connection.use_time",
    .brief = "The time between borrowing a connection and returning it to the pool",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The time it took to obtain an open connection from the pool
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connection.pool.name` | `Required` |
pub const db_client_connection_wait_time = types.Metric{
    .name = "db.client.connection.wait_time",
    .brief = "The time it took to obtain an open connection from the pool",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Deprecated, use `db.client.connection.create_time` instead. Note: the unit also changed from `ms` to `s`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `ms` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.create_time` with unit `s`.
pub const db_client_connections_create_time = types.Metric{
    .name = "db.client.connections.create_time",
    .brief = "Deprecated, use `db.client.connection.create_time` instead. Note: the unit also changed from `ms` to `s`.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "ms",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.create_time` with unit `s`.",
};

/// Deprecated, use `db.client.connection.idle.max` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.idle.max`.
pub const db_client_connections_idle_max = types.Metric{
    .name = "db.client.connections.idle.max",
    .brief = "Deprecated, use `db.client.connection.idle.max` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.idle.max`.",
};

/// Deprecated, use `db.client.connection.idle.min` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.idle.min`.
pub const db_client_connections_idle_min = types.Metric{
    .name = "db.client.connections.idle.min",
    .brief = "Deprecated, use `db.client.connection.idle.min` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.idle.min`.",
};

/// Deprecated, use `db.client.connection.max` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.max`.
pub const db_client_connections_max = types.Metric{
    .name = "db.client.connections.max",
    .brief = "Deprecated, use `db.client.connection.max` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.max`.",
};

/// Deprecated, use `db.client.connection.pending_requests` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.pending_requests`.
pub const db_client_connections_pending_requests = types.Metric{
    .name = "db.client.connections.pending_requests",
    .brief = "Deprecated, use `db.client.connection.pending_requests` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.pending_requests`.",
};

/// Deprecated, use `db.client.connection.timeouts` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{timeout}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.timeouts`.
pub const db_client_connections_timeouts = types.Metric{
    .name = "db.client.connections.timeouts",
    .brief = "Deprecated, use `db.client.connection.timeouts` instead.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{timeout}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.timeouts`.",
};

/// Deprecated, use `db.client.connection.count` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
/// | `db.client.connections.state` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.count`.
pub const db_client_connections_usage = types.Metric{
    .name = "db.client.connections.usage",
    .brief = "Deprecated, use `db.client.connection.count` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.count`.",
};

/// Deprecated, use `db.client.connection.use_time` instead. Note: the unit also changed from `ms` to `s`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `ms` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.use_time` with unit `s`.
pub const db_client_connections_use_time = types.Metric{
    .name = "db.client.connections.use_time",
    .brief = "Deprecated, use `db.client.connection.use_time` instead. Note: the unit also changed from `ms` to `s`.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "ms",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.use_time` with unit `s`.",
};

/// Deprecated, use `db.client.connection.wait_time` instead. Note: the unit also changed from `ms` to `s`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `ms` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.client.connections.pool.name` | `Required` |
///
/// Note: This metric is deprecated. Replaced by `db.client.connection.wait_time` with unit `s`.
pub const db_client_connections_wait_time = types.Metric{
    .name = "db.client.connections.wait_time",
    .brief = "Deprecated, use `db.client.connection.wait_time` instead. Note: the unit also changed from `ms` to `s`.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "ms",
    .value_type = .double,
    .deprecated_reason = "Replaced by `db.client.connection.wait_time` with unit `s`.",
};

/// Deprecated, use `azure.cosmosdb.client.active_instance.count` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{instance}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If using a port other than the default port for this DBMS and if `server.address` is set. |
///
/// Note: This metric is deprecated. Replaced by `azure.cosmosdb.client.active_instance.count`.
pub const db_client_cosmosdb_active_instance_count = types.Metric{
    .name = "db.client.cosmosdb.active_instance.count",
    .brief = "Deprecated, use `azure.cosmosdb.client.active_instance.count` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{instance}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `azure.cosmosdb.client.active_instance.count`.",
};

/// Deprecated, use `azure.cosmosdb.client.operation.request_charge` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{request_unit}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.collection.name` | `Conditionally_required`: If available. |
/// | `db.cosmosdb.consistency_level` | `Conditionally_required`: If available. |
/// | `db.cosmosdb.regions_contacted` | `{"recommended": "if available"}` |
/// | `db.cosmosdb.sub_status_code` | `Conditionally_required`: when response was received and contained sub-code. |
/// | `db.namespace` | `Conditionally_required`: If available. |
/// | `db.operation.name` | `Conditionally_required`: If readily available and if there is a single operation name that describes the database call. The operation name MAY be parsed from the query text, in which case it SHOULD be the single operation name found in the query.  |
///
/// Note: This metric is deprecated. Replaced by `azure.cosmosdb.client.operation.request_charge`.
pub const db_client_cosmosdb_operation_request_charge = types.Metric{
    .name = "db.client.cosmosdb.operation.request_charge",
    .brief = "Deprecated, use `azure.cosmosdb.client.operation.request_charge` instead.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{request_unit}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `azure.cosmosdb.client.operation.request_charge`.",
};

/// Duration of database client operations.
///
/// Notes: Batch operations SHOULD be recorded as a single operation.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.collection.name` | `Conditionally_required`: If readily available and if a database call is performed on a single collection.  |
/// | `db.namespace` | `Conditionally_required`: If available. |
/// | `db.operation.name` | `Conditionally_required`: If readily available and if there is a single operation name that describes the database call.  |
/// | `db.query.summary` | `{"recommended": "if available through instrumentation hooks or if the instrumentation supports generating a query summary."}` |
/// | `db.query.text` | `Opt_in` |
/// | `db.response.status_code` | `Conditionally_required`: If the operation failed and status code is available. |
/// | `db.stored_procedure.name` | `{"recommended": "if operation applies to a specific stored procedure."}` |
/// | `db.system.name` | `Required` |
/// | `error.type` | `Conditionally_required`: If and only if the operation failed. |
/// | `network.peer.address` | `{"recommended": "if applicable for this database system."}` |
/// | `network.peer.port` | `{"recommended": "if and only if `network.peer.address` is set."}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If using a port other than the default port for this DBMS and if `server.address` is set. |
pub const db_client_operation_duration = types.Metric{
    .name = "db.client.operation.duration",
    .brief = "Duration of database client operations.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The actual number of records returned by the database operation.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{row}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `db.collection.name` | `Conditionally_required`: If readily available and if a database call is performed on a single collection.  |
/// | `db.namespace` | `Conditionally_required`: If available. |
/// | `db.operation.name` | `Conditionally_required`: If readily available and if there is a single operation name that describes the database call.  |
/// | `db.query.summary` | `{"recommended": "if available through instrumentation hooks or if the instrumentation supports generating a query summary."}` |
/// | `db.query.text` | `Opt_in` |
/// | `db.response.status_code` | `Conditionally_required`: If the operation failed and status code is available. |
/// | `db.system.name` | `Required` |
/// | `error.type` | `Conditionally_required`: If and only if the operation failed. |
/// | `network.peer.address` | `{"recommended": "if applicable for this database system."}` |
/// | `network.peer.port` | `{"recommended": "if and only if `network.peer.address` is set."}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If using a port other than the default port for this DBMS and if `server.address` is set. |
pub const db_client_response_returned_rows = types.Metric{
    .name = "db.client.response.returned_rows",
    .brief = "The actual number of records returned by the database operation.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{row}",
    .value_type = .double,
};

/// Measures the time taken to perform a DNS lookup.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `dns.question.name` | `Required` |
/// | `error.type` | `Conditionally_required`: if and only if an error has occurred. |
pub const dns_lookup_duration = types.Metric{
    .name = "dns.lookup.duration",
    .brief = "Measures the time taken to perform a DNS lookup.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The number of .NET assemblies that are currently loaded.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`AppDomain.CurrentDomain.GetAssemblies().Length`](https://learn.microsoft.com/dotnet/api/system.appdomain.getassemblies).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{assembly}` | `Stable` |
pub const dotnet_assembly_count = types.Metric{
    .name = "dotnet.assembly.count",
    .brief = "The number of .NET assemblies that are currently loaded.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{assembly}",
    .value_type = .double,
};

/// The number of exceptions that have been thrown in managed code.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as counting calls to [`AppDomain.CurrentDomain.FirstChanceException`](https://learn.microsoft.com/dotnet/api/system.appdomain.firstchanceexception).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{exception}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Required` |
pub const dotnet_exceptions = types.Metric{
    .name = "dotnet.exceptions",
    .brief = "The number of exceptions that have been thrown in managed code.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{exception}",
    .value_type = .double,
};

/// The number of garbage collections that have occurred since the process has started.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric uses the [`GC.CollectionCount(int generation)`](https://learn.microsoft.com/dotnet/api/system.gc.collectioncount) API to calculate exclusive collections per generation.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{collection}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `dotnet.gc.heap.generation` | `Required` |
pub const dotnet_gc_collections = types.Metric{
    .name = "dotnet.gc.collections",
    .brief = "The number of garbage collections that have occurred since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{collection}",
    .value_type = .double,
};

/// The *approximate* number of bytes allocated on the managed GC heap since the process has started. The returned value does not include any native allocations.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`GC.GetTotalAllocatedBytes()`](https://learn.microsoft.com/dotnet/api/system.gc.gettotalallocatedbytes).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Stable` |
pub const dotnet_gc_heap_total_allocated = types.Metric{
    .name = "dotnet.gc.heap.total_allocated",
    .brief = "The *approximate* number of bytes allocated on the managed GC heap since the process has started. The returned value does not include any native allocations.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// The heap fragmentation, as observed during the latest garbage collection.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`GC.GetGCMemoryInfo().GenerationInfo.FragmentationAfterBytes`](https://learn.microsoft.com/dotnet/api/system.gcgenerationinfo.fragmentationafterbytes).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `dotnet.gc.heap.generation` | `Required` |
pub const dotnet_gc_last_collection_heap_fragmentation_size = types.Metric{
    .name = "dotnet.gc.last_collection.heap.fragmentation.size",
    .brief = "The heap fragmentation, as observed during the latest garbage collection.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The managed GC heap size (including fragmentation), as observed during the latest garbage collection.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`GC.GetGCMemoryInfo().GenerationInfo.SizeAfterBytes`](https://learn.microsoft.com/dotnet/api/system.gcgenerationinfo.sizeafterbytes).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `dotnet.gc.heap.generation` | `Required` |
pub const dotnet_gc_last_collection_heap_size = types.Metric{
    .name = "dotnet.gc.last_collection.heap.size",
    .brief = "The managed GC heap size (including fragmentation), as observed during the latest garbage collection.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The amount of committed virtual memory in use by the .NET GC, as observed during the latest garbage collection.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`GC.GetGCMemoryInfo().TotalCommittedBytes`](https://learn.microsoft.com/dotnet/api/system.gcmemoryinfo.totalcommittedbytes). Committed virtual memory may be larger than the heap size because it includes both memory for storing existing objects (the heap size) and some extra memory that is ready to handle newly allocated objects in the future.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
pub const dotnet_gc_last_collection_memory_committed_size = types.Metric{
    .name = "dotnet.gc.last_collection.memory.committed_size",
    .brief = "The amount of committed virtual memory in use by the .NET GC, as observed during the latest garbage collection.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The total amount of time paused in GC since the process has started.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`GC.GetTotalPauseDuration()`](https://learn.microsoft.com/dotnet/api/system.gc.gettotalpauseduration).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Stable` |
pub const dotnet_gc_pause_time = types.Metric{
    .name = "dotnet.gc.pause.time",
    .brief = "The total amount of time paused in GC since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// The amount of time the JIT compiler has spent compiling methods since the process has started.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`JitInfo.GetCompilationTime()`](https://learn.microsoft.com/dotnet/api/system.runtime.jitinfo.getcompilationtime).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Stable` |
pub const dotnet_jit_compilation_time = types.Metric{
    .name = "dotnet.jit.compilation.time",
    .brief = "The amount of time the JIT compiler has spent compiling methods since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Count of bytes of intermediate language that have been compiled since the process has started.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`JitInfo.GetCompiledILBytes()`](https://learn.microsoft.com/dotnet/api/system.runtime.jitinfo.getcompiledilbytes).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Stable` |
pub const dotnet_jit_compiled_il_size = types.Metric{
    .name = "dotnet.jit.compiled_il.size",
    .brief = "Count of bytes of intermediate language that have been compiled since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// The number of times the JIT compiler (re)compiled methods since the process has started.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`JitInfo.GetCompiledMethodCount()`](https://learn.microsoft.com/dotnet/api/system.runtime.jitinfo.getcompiledmethodcount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{method}` | `Stable` |
pub const dotnet_jit_compiled_methods = types.Metric{
    .name = "dotnet.jit.compiled_methods",
    .brief = "The number of times the JIT compiler (re)compiled methods since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{method}",
    .value_type = .double,
};

/// The number of times there was contention when trying to acquire a monitor lock since the process has started.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`Monitor.LockContentionCount`](https://learn.microsoft.com/dotnet/api/system.threading.monitor.lockcontentioncount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{contention}` | `Stable` |
pub const dotnet_monitor_lock_contentions = types.Metric{
    .name = "dotnet.monitor.lock_contentions",
    .brief = "The number of times there was contention when trying to acquire a monitor lock since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{contention}",
    .value_type = .double,
};

/// The number of processors available to the process.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as accessing [`Environment.ProcessorCount`](https://learn.microsoft.com/dotnet/api/system.environment.processorcount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Stable` |
pub const dotnet_process_cpu_count = types.Metric{
    .name = "dotnet.process.cpu.count",
    .brief = "The number of processors available to the process.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// CPU time used by the process.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as accessing the corresponding processor time properties on [`System.Diagnostics.Process`](https://learn.microsoft.com/dotnet/api/system.diagnostics.process).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.mode` | `Required` |
pub const dotnet_process_cpu_time = types.Metric{
    .name = "dotnet.process.cpu.time",
    .brief = "CPU time used by the process.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// The number of bytes of physical memory mapped to the process context.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`Environment.WorkingSet`](https://learn.microsoft.com/dotnet/api/system.environment.workingset).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
pub const dotnet_process_memory_working_set = types.Metric{
    .name = "dotnet.process.memory.working_set",
    .brief = "The number of bytes of physical memory mapped to the process context.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The number of work items that are currently queued to be processed by the thread pool.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`ThreadPool.PendingWorkItemCount`](https://learn.microsoft.com/dotnet/api/system.threading.threadpool.pendingworkitemcount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{work_item}` | `Stable` |
pub const dotnet_thread_pool_queue_length = types.Metric{
    .name = "dotnet.thread_pool.queue.length",
    .brief = "The number of work items that are currently queued to be processed by the thread pool.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{work_item}",
    .value_type = .double,
};

/// The number of thread pool threads that currently exist.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`ThreadPool.ThreadCount`](https://learn.microsoft.com/dotnet/api/system.threading.threadpool.threadcount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{thread}` | `Stable` |
pub const dotnet_thread_pool_thread_count = types.Metric{
    .name = "dotnet.thread_pool.thread.count",
    .brief = "The number of thread pool threads that currently exist.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{thread}",
    .value_type = .double,
};

/// The number of work items that the thread pool has completed since the process has started.
///
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`ThreadPool.CompletedWorkItemCount`](https://learn.microsoft.com/dotnet/api/system.threading.threadpool.completedworkitemcount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{work_item}` | `Stable` |
pub const dotnet_thread_pool_work_item_count = types.Metric{
    .name = "dotnet.thread_pool.work_item.count",
    .brief = "The number of work items that the thread pool has completed since the process has started.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{work_item}",
    .value_type = .double,
};

/// The number of timer instances that are currently active.
///
/// Notes: Meter name: `System.Runtime`; Added in: .NET 9.0. This metric reports the same values as calling [`Timer.ActiveCount`](https://learn.microsoft.com/dotnet/api/system.threading.timer.activecount).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{timer}` | `Stable` |
pub const dotnet_timer_count = types.Metric{
    .name = "dotnet.timer.count",
    .brief = "The number of timer instances that are currently active.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{timer}",
    .value_type = .double,
};

/// Number of invocation cold starts
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{coldstart}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_coldstarts = types.Metric{
    .name = "faas.coldstarts",
    .brief = "Number of invocation cold starts",
    .stability = .development,
    .instrument = .counter,
    .unit = "{coldstart}",
    .value_type = .double,
};

/// Distribution of CPU usage per invocation
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_cpu_usage = types.Metric{
    .name = "faas.cpu_usage",
    .brief = "Distribution of CPU usage per invocation",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of invocation errors
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_errors = types.Metric{
    .name = "faas.errors",
    .brief = "Number of invocation errors",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

/// Measures the duration of the function's initialization, such as a cold start
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_init_duration = types.Metric{
    .name = "faas.init_duration",
    .brief = "Measures the duration of the function's initialization, such as a cold start",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of successful invocations
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{invocation}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_invocations = types.Metric{
    .name = "faas.invocations",
    .brief = "Number of successful invocations",
    .stability = .development,
    .instrument = .counter,
    .unit = "{invocation}",
    .value_type = .double,
};

/// Measures the duration of the function's logic execution
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_invoke_duration = types.Metric{
    .name = "faas.invoke_duration",
    .brief = "Measures the duration of the function's logic execution",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Distribution of max memory usage per invocation
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_mem_usage = types.Metric{
    .name = "faas.mem_usage",
    .brief = "Distribution of max memory usage per invocation",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Distribution of net I/O usage per invocation
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_net_io = types.Metric{
    .name = "faas.net_io",
    .brief = "Distribution of net I/O usage per invocation",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Number of invocation timeouts
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{timeout}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `faas.trigger` | `Recommended` |
pub const faas_timeouts = types.Metric{
    .name = "faas.timeouts",
    .brief = "Number of invocation timeouts",
    .stability = .development,
    .instrument = .counter,
    .unit = "{timeout}",
    .value_type = .double,
};

/// GenAI operation duration
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: if the operation ended in an error |
/// | `gen_ai.operation.name` | `Required` |
/// | `gen_ai.request.model` | `Conditionally_required`: If available. |
/// | `gen_ai.response.model` | `Recommended` |
/// | `gen_ai.system` | `Required` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If `server.address` is set. |
pub const gen_ai_client_operation_duration = types.Metric{
    .name = "gen_ai.client.operation.duration",
    .brief = "GenAI operation duration",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Measures number of input and output tokens used
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{token}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `gen_ai.operation.name` | `Required` |
/// | `gen_ai.request.model` | `Conditionally_required`: If available. |
/// | `gen_ai.response.model` | `Recommended` |
/// | `gen_ai.system` | `Required` |
/// | `gen_ai.token.type` | `Required` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If `server.address` is set. |
pub const gen_ai_client_token_usage = types.Metric{
    .name = "gen_ai.client.token.usage",
    .brief = "Measures number of input and output tokens used",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{token}",
    .value_type = .double,
};

/// Generative AI server request duration such as time-to-last byte or last output token
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: if the operation ended in an error |
/// | `gen_ai.operation.name` | `Required` |
/// | `gen_ai.request.model` | `Conditionally_required`: If available. |
/// | `gen_ai.response.model` | `Recommended` |
/// | `gen_ai.system` | `Required` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If `server.address` is set. |
pub const gen_ai_server_request_duration = types.Metric{
    .name = "gen_ai.server.request.duration",
    .brief = "Generative AI server request duration such as time-to-last byte or last output token",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Time per output token generated after the first token for successful responses
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `gen_ai.operation.name` | `Required` |
/// | `gen_ai.request.model` | `Conditionally_required`: If available. |
/// | `gen_ai.response.model` | `Recommended` |
/// | `gen_ai.system` | `Required` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If `server.address` is set. |
pub const gen_ai_server_time_per_output_token = types.Metric{
    .name = "gen_ai.server.time_per_output_token",
    .brief = "Time per output token generated after the first token for successful responses",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Time to generate first token for successful responses
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `gen_ai.operation.name` | `Required` |
/// | `gen_ai.request.model` | `Conditionally_required`: If available. |
/// | `gen_ai.response.model` | `Recommended` |
/// | `gen_ai.system` | `Required` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Conditionally_required`: If `server.address` is set. |
pub const gen_ai_server_time_to_first_token = types.Metric{
    .name = "gen_ai.server.time_to_first_token",
    .brief = "Time to generate first token for successful responses",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Heap size target percentage configured by the user, otherwise 100.
///
/// Notes: The value range is \[0.0,100.0\]. Computed from `/gc/gogc:percent`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `%` | `Development` |
pub const go_config_gogc = types.Metric{
    .name = "go.config.gogc",
    .brief = "Heap size target percentage configured by the user, otherwise 100.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "%",
    .value_type = .double,
};

/// Count of live goroutines.
///
/// Notes: Computed from `/sched/goroutines:goroutines`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{goroutine}` | `Development` |
pub const go_goroutine_count = types.Metric{
    .name = "go.goroutine.count",
    .brief = "Count of live goroutines.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{goroutine}",
    .value_type = .double,
};

/// Memory allocated to the heap by the application.
///
/// Notes: Computed from `/gc/heap/allocs:bytes`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
pub const go_memory_allocated = types.Metric{
    .name = "go.memory.allocated",
    .brief = "Memory allocated to the heap by the application.",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// Count of allocations to the heap by the application.
///
/// Notes: Computed from `/gc/heap/allocs:objects`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{allocation}` | `Development` |
pub const go_memory_allocations = types.Metric{
    .name = "go.memory.allocations",
    .brief = "Count of allocations to the heap by the application.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{allocation}",
    .value_type = .double,
};

/// Heap size target for the end of the GC cycle.
///
/// Notes: Computed from `/gc/heap/goal:bytes`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const go_memory_gc_goal = types.Metric{
    .name = "go.memory.gc.goal",
    .brief = "Heap size target for the end of the GC cycle.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Go runtime memory limit configured by the user, if a limit exists.
///
/// Notes: Computed from `/gc/gomemlimit:bytes`. This metric is excluded if the limit obtained from the Go runtime is math.MaxInt64.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const go_memory_limit = types.Metric{
    .name = "go.memory.limit",
    .brief = "Go runtime memory limit configured by the user, if a limit exists.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Memory used by the Go runtime.
///
/// Notes: Computed from `(/memory/classes/total:bytes - /memory/classes/heap/released:bytes)`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `go.memory.type` | `Recommended` |
pub const go_memory_used = types.Metric{
    .name = "go.memory.used",
    .brief = "Memory used by the Go runtime.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The number of OS threads that can execute user-level Go code simultaneously.
///
/// Notes: Computed from `/sched/gomaxprocs:threads`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{thread}` | `Development` |
pub const go_processor_limit = types.Metric{
    .name = "go.processor.limit",
    .brief = "The number of OS threads that can execute user-level Go code simultaneously.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{thread}",
    .value_type = .double,
};

/// The time goroutines have spent in the scheduler in a runnable state before actually running.
///
/// Notes: Computed from `/sched/latencies:seconds`. Bucket boundaries are provided by the runtime, and are subject to change.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
pub const go_schedule_duration = types.Metric{
    .name = "go.schedule.duration",
    .brief = "The time goroutines have spent in the scheduler in a runnable state before actually running.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of active HTTP requests.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `http.request.method` | `Recommended` |
/// | `server.address` | `Required` |
/// | `server.port` | `Required` |
/// | `url.scheme` | `Opt_in` |
/// | `url.template` | `Conditionally_required`: If available. |
pub const http_client_active_requests = types.Metric{
    .name = "http.client.active_requests",
    .brief = "Number of active HTTP requests.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
};

/// The duration of the successfully established outbound HTTP connections.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.peer.address` | `Recommended` |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Required` |
/// | `server.port` | `Required` |
/// | `url.scheme` | `Opt_in` |
pub const http_client_connection_duration = types.Metric{
    .name = "http.client.connection.duration",
    .brief = "The duration of the successfully established outbound HTTP connections.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of outbound HTTP connections that are currently active or idle on the client.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `http.connection.state` | `Required` |
/// | `network.peer.address` | `Recommended` |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Required` |
/// | `server.port` | `Required` |
/// | `url.scheme` | `Opt_in` |
pub const http_client_open_connections = types.Metric{
    .name = "http.client.open_connections",
    .brief = "Number of outbound HTTP connections that are currently active or idle on the client.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// Size of HTTP client request bodies.
///
/// Notes: The size of the request payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If request has ended with an error. |
/// | `http.request.method` | `Required` |
/// | `http.response.status_code` | `Conditionally_required`: If and only if one was received/sent. |
/// | `network.protocol.name` | `Conditionally_required`: If not `http` and `network.protocol.version` is set. |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Required` |
/// | `server.port` | `Required` |
/// | `url.scheme` | `Opt_in` |
/// | `url.template` | `Conditionally_required`: If available. |
pub const http_client_request_body_size = types.Metric{
    .name = "http.client.request.body.size",
    .brief = "Size of HTTP client request bodies.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Duration of HTTP client requests.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If request has ended with an error. |
/// | `http.request.method` | `Required` |
/// | `http.response.status_code` | `Conditionally_required`: If and only if one was received/sent. |
/// | `network.protocol.name` | `Conditionally_required`: If not `http` and `network.protocol.version` is set. |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Required` |
/// | `server.port` | `Required` |
/// | `url.scheme` | `Opt_in` |
/// | `url.template` | `Opt_in` |
pub const http_client_request_duration = types.Metric{
    .name = "http.client.request.duration",
    .brief = "Duration of HTTP client requests.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Size of HTTP client response bodies.
///
/// Notes: The size of the response payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If request has ended with an error. |
/// | `http.request.method` | `Required` |
/// | `http.response.status_code` | `Conditionally_required`: If and only if one was received/sent. |
/// | `network.protocol.name` | `Conditionally_required`: If not `http` and `network.protocol.version` is set. |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Required` |
/// | `server.port` | `Required` |
/// | `url.scheme` | `Opt_in` |
/// | `url.template` | `Conditionally_required`: If available. |
pub const http_client_response_body_size = types.Metric{
    .name = "http.client.response.body.size",
    .brief = "Size of HTTP client response bodies.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Number of active HTTP server requests.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `http.request.method` | `Required` |
/// | `server.address` | `Opt_in` |
/// | `server.port` | `Opt_in` |
/// | `url.scheme` | `Required` |
pub const http_server_active_requests = types.Metric{
    .name = "http.server.active_requests",
    .brief = "Number of active HTTP server requests.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
};

/// Size of HTTP server request bodies.
///
/// Notes: The size of the request payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If request has ended with an error. |
/// | `http.request.method` | `Required` |
/// | `http.response.status_code` | `Conditionally_required`: If and only if one was received/sent. |
/// | `http.route` | `Conditionally_required`: If and only if it's available |
/// | `network.protocol.name` | `Conditionally_required`: If not `http` and `network.protocol.version` is set. |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Opt_in` |
/// | `server.port` | `Opt_in` |
/// | `url.scheme` | `Required` |
/// | `user_agent.synthetic.type` | `Opt_in` |
pub const http_server_request_body_size = types.Metric{
    .name = "http.server.request.body.size",
    .brief = "Size of HTTP server request bodies.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Duration of HTTP server requests.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If request has ended with an error. |
/// | `http.request.method` | `Required` |
/// | `http.response.status_code` | `Conditionally_required`: If and only if one was received/sent. |
/// | `http.route` | `Conditionally_required`: If and only if it's available |
/// | `network.protocol.name` | `Conditionally_required`: If not `http` and `network.protocol.version` is set. |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Opt_in` |
/// | `server.port` | `Opt_in` |
/// | `url.scheme` | `Required` |
/// | `user_agent.synthetic.type` | `Opt_in` |
pub const http_server_request_duration = types.Metric{
    .name = "http.server.request.duration",
    .brief = "Duration of HTTP server requests.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Size of HTTP server response bodies.
///
/// Notes: The size of the response payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If request has ended with an error. |
/// | `http.request.method` | `Required` |
/// | `http.response.status_code` | `Conditionally_required`: If and only if one was received/sent. |
/// | `http.route` | `Conditionally_required`: If and only if it's available |
/// | `network.protocol.name` | `Conditionally_required`: If not `http` and `network.protocol.version` is set. |
/// | `network.protocol.version` | `Recommended` |
/// | `server.address` | `Opt_in` |
/// | `server.port` | `Opt_in` |
/// | `url.scheme` | `Required` |
/// | `user_agent.synthetic.type` | `Opt_in` |
pub const http_server_response_body_size = types.Metric{
    .name = "http.server.response.body.size",
    .brief = "Size of HTTP server response bodies.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Energy consumed by the component
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `J` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
/// | `hw.type` | `Required` |
pub const hw_energy = types.Metric{
    .name = "hw.energy",
    .brief = "Energy consumed by the component",
    .stability = .development,
    .instrument = .counter,
    .unit = "J",
    .value_type = .double,
};

/// Number of errors encountered by the component
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: if and only if an error has occurred |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
/// | `hw.type` | `Required` |
pub const hw_errors = types.Metric{
    .name = "hw.errors",
    .brief = "Number of errors encountered by the component",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

/// Ambient (external) temperature of the physical host
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `Cel` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
pub const hw_host_ambient_temperature = types.Metric{
    .name = "hw.host.ambient_temperature",
    .brief = "Ambient (external) temperature of the physical host",
    .stability = .development,
    .instrument = .gauge,
    .unit = "Cel",
    .value_type = .double,
};

/// Total energy consumed by the entire physical host, in joules
///
/// Notes: The overall energy usage of a host MUST be reported using the specific `hw.host.energy` and `hw.host.power` metrics **only**, instead of the generic `hw.energy` and `hw.power` described in the previous section, to prevent summing up overlapping values.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `J` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
pub const hw_host_energy = types.Metric{
    .name = "hw.host.energy",
    .brief = "Total energy consumed by the entire physical host, in joules",
    .stability = .development,
    .instrument = .counter,
    .unit = "J",
    .value_type = .double,
};

/// By how many degrees Celsius the temperature of the physical host can be increased, before reaching a warning threshold on one of the internal sensors
///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `Cel` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
pub const hw_host_heating_margin = types.Metric{
    .name = "hw.host.heating_margin",
    .brief = "By how many degrees Celsius the temperature of the physical host can be increased, before reaching a warning threshold on one of the internal sensors",
    .stability = .development,
    .instrument = .gauge,
    .unit = "Cel",
    .value_type = .double,
};

/// Instantaneous power consumed by the entire physical host in Watts (`hw.host.energy` is preferred)
///
///
/// Notes: The overall energy usage of a host MUST be reported using the specific `hw.host.energy` and `hw.host.power` metrics **only**, instead of the generic `hw.energy` and `hw.power` described in the previous section, to prevent summing up overlapping values.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `W` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
pub const hw_host_power = types.Metric{
    .name = "hw.host.power",
    .brief = "Instantaneous power consumed by the entire physical host in Watts (`hw.host.energy` is preferred)",
    .stability = .development,
    .instrument = .gauge,
    .unit = "W",
    .value_type = .double,
};

/// Instantaneous power consumed by the component
///
/// Notes: It is recommended to report `hw.energy` instead of `hw.power` when possible.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `W` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
/// | `hw.type` | `Required` |
pub const hw_power = types.Metric{
    .name = "hw.power",
    .brief = "Instantaneous power consumed by the component",
    .stability = .development,
    .instrument = .gauge,
    .unit = "W",
    .value_type = .double,
};

/// Operational status: `1` (true) or `0` (false) for each of the possible states
///
/// Notes: `hw.status` is currently specified as an *UpDownCounter* but would ideally be represented using a [*StateSet* as defined in OpenMetrics](https://github.com/prometheus/OpenMetrics/blob/v1.0.0/specification/OpenMetrics.md#stateset). This semantic convention will be updated once *StateSet* is specified in OpenTelemetry. This planned change is not expected to have any consequence on the way users query their timeseries backend to retrieve the values of `hw.status` over time.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `hw.id` | `Required` |
/// | `hw.name` | `Recommended` |
/// | `hw.parent` | `Recommended` |
/// | `hw.state` | `Required` |
/// | `hw.type` | `Required` |
pub const hw_status = types.Metric{
    .name = "hw.status",
    .brief = "Operational status: `1` (true) or `0` (false) for each of the possible states",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "1",
    .value_type = .double,
};

/// Number of buffers in the pool.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{buffer}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.buffer.pool.name` | `Recommended` |
pub const jvm_buffer_count = types.Metric{
    .name = "jvm.buffer.count",
    .brief = "Number of buffers in the pool.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{buffer}",
    .value_type = .double,
};

/// Measure of total memory capacity of buffers.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.buffer.pool.name` | `Recommended` |
pub const jvm_buffer_memory_limit = types.Metric{
    .name = "jvm.buffer.memory.limit",
    .brief = "Measure of total memory capacity of buffers.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Deprecated, use `jvm.buffer.memory.used` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.buffer.pool.name` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `jvm.buffer.memory.used`.
pub const jvm_buffer_memory_usage = types.Metric{
    .name = "jvm.buffer.memory.usage",
    .brief = "Deprecated, use `jvm.buffer.memory.used` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
    .deprecated_reason = "Replaced by `jvm.buffer.memory.used`.",
};

/// Measure of memory used by buffers.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.buffer.pool.name` | `Recommended` |
pub const jvm_buffer_memory_used = types.Metric{
    .name = "jvm.buffer.memory.used",
    .brief = "Measure of memory used by buffers.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Number of classes currently loaded.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{class}` | `Stable` |
pub const jvm_class_count = types.Metric{
    .name = "jvm.class.count",
    .brief = "Number of classes currently loaded.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{class}",
    .value_type = .double,
};

/// Number of classes loaded since JVM start.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{class}` | `Stable` |
pub const jvm_class_loaded = types.Metric{
    .name = "jvm.class.loaded",
    .brief = "Number of classes loaded since JVM start.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{class}",
    .value_type = .double,
};

/// Number of classes unloaded since JVM start.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{class}` | `Stable` |
pub const jvm_class_unloaded = types.Metric{
    .name = "jvm.class.unloaded",
    .brief = "Number of classes unloaded since JVM start.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{class}",
    .value_type = .double,
};

/// Number of processors available to the Java virtual machine.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Stable` |
pub const jvm_cpu_count = types.Metric{
    .name = "jvm.cpu.count",
    .brief = "Number of processors available to the Java virtual machine.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Recent CPU utilization for the process as reported by the JVM.
///
/// Notes: The value range is \[0.0,1.0\]. This utilization is not defined as being for the specific interval since last measurement (unlike `system.cpu.utilization`). [Reference](https://docs.oracle.com/en/java/javase/17/docs/api/jdk.management/com/sun/management/OperatingSystemMXBean.html#getProcessCpuLoad()).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Stable` |
pub const jvm_cpu_recent_utilization = types.Metric{
    .name = "jvm.cpu.recent_utilization",
    .brief = "Recent CPU utilization for the process as reported by the JVM.",
    .stability = .stable,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// CPU time used by the process as reported by the JVM.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Stable` |
pub const jvm_cpu_time = types.Metric{
    .name = "jvm.cpu.time",
    .brief = "CPU time used by the process as reported by the JVM.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Number of open file descriptors as reported by the JVM.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{file_descriptor}` | `Development` |
pub const jvm_file_descriptor_count = types.Metric{
    .name = "jvm.file_descriptor.count",
    .brief = "Number of open file descriptors as reported by the JVM.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{file_descriptor}",
    .value_type = .double,
};

/// Duration of JVM garbage collection actions.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.gc.action` | `Recommended` |
/// | `jvm.gc.cause` | `Opt_in` |
/// | `jvm.gc.name` | `Recommended` |
pub const jvm_gc_duration = types.Metric{
    .name = "jvm.gc.duration",
    .brief = "Duration of JVM garbage collection actions.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Measure of memory committed.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.memory.pool.name` | `Recommended` |
/// | `jvm.memory.type` | `Recommended` |
pub const jvm_memory_committed = types.Metric{
    .name = "jvm.memory.committed",
    .brief = "Measure of memory committed.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Measure of initial memory requested.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.memory.pool.name` | `Recommended` |
/// | `jvm.memory.type` | `Recommended` |
pub const jvm_memory_init = types.Metric{
    .name = "jvm.memory.init",
    .brief = "Measure of initial memory requested.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Measure of max obtainable memory.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.memory.pool.name` | `Recommended` |
/// | `jvm.memory.type` | `Recommended` |
pub const jvm_memory_limit = types.Metric{
    .name = "jvm.memory.limit",
    .brief = "Measure of max obtainable memory.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Measure of memory used.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.memory.pool.name` | `Recommended` |
/// | `jvm.memory.type` | `Recommended` |
pub const jvm_memory_used = types.Metric{
    .name = "jvm.memory.used",
    .brief = "Measure of memory used.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Measure of memory used, as measured after the most recent garbage collection event on this pool.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.memory.pool.name` | `Recommended` |
/// | `jvm.memory.type` | `Recommended` |
pub const jvm_memory_used_after_last_gc = types.Metric{
    .name = "jvm.memory.used_after_last_gc",
    .brief = "Measure of memory used, as measured after the most recent garbage collection event on this pool.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Average CPU load of the whole system for the last minute as reported by the JVM.
///
/// Notes: The value range is \[0,n\], where n is the number of CPU cores - or a negative number if the value is not available. This utilization is not defined as being for the specific interval since last measurement (unlike `system.cpu.utilization`). [Reference](https://docs.oracle.com/en/java/javase/17/docs/api/java.management/java/lang/management/OperatingSystemMXBean.html#getSystemLoadAverage()).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{run_queue_item}` | `Development` |
pub const jvm_system_cpu_load_1m = types.Metric{
    .name = "jvm.system.cpu.load_1m",
    .brief = "Average CPU load of the whole system for the last minute as reported by the JVM.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{run_queue_item}",
    .value_type = .double,
};

/// Recent CPU utilization for the whole system as reported by the JVM.
///
/// Notes: The value range is \[0.0,1.0\]. This utilization is not defined as being for the specific interval since last measurement (unlike `system.cpu.utilization`). [Reference](https://docs.oracle.com/en/java/javase/17/docs/api/jdk.management/com/sun/management/OperatingSystemMXBean.html#getCpuLoad()).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
pub const jvm_system_cpu_utilization = types.Metric{
    .name = "jvm.system.cpu.utilization",
    .brief = "Recent CPU utilization for the whole system as reported by the JVM.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// Number of executing platform threads.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{thread}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `jvm.thread.daemon` | `Recommended` |
/// | `jvm.thread.state` | `Recommended` |
pub const jvm_thread_count = types.Metric{
    .name = "jvm.thread.count",
    .brief = "Number of executing platform threads.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{thread}",
    .value_type = .double,
};

/// Maximum CPU resource limit set for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_container_cpu_limit = types.Metric{
    .name = "k8s.container.cpu.limit",
    .brief = "Maximum CPU resource limit set for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// CPU resource requested for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_container_cpu_request = types.Metric{
    .name = "k8s.container.cpu.request",
    .brief = "CPU resource requested for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Maximum ephemeral storage resource limit set for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_container_ephemeral_storage_limit = types.Metric{
    .name = "k8s.container.ephemeral_storage.limit",
    .brief = "Maximum ephemeral storage resource limit set for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Ephemeral storage resource requested for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_container_ephemeral_storage_request = types.Metric{
    .name = "k8s.container.ephemeral_storage.request",
    .brief = "Ephemeral storage resource requested for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Maximum memory resource limit set for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_container_memory_limit = types.Metric{
    .name = "k8s.container.memory.limit",
    .brief = "Maximum memory resource limit set for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Memory resource requested for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_container_memory_request = types.Metric{
    .name = "k8s.container.memory.request",
    .brief = "Memory resource requested for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Indicates whether the container is currently marked as ready to accept traffic, based on its readiness probe (1 = ready, 0 = not ready)
///
///
/// Notes: This metric SHOULD reflect the value of the `ready` field in the [K8s ContainerStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{container}` | `Development` |
pub const k8s_container_ready = types.Metric{
    .name = "k8s.container.ready",
    .brief = "Indicates whether the container is currently marked as ready to accept traffic, based on its readiness probe (1 = ready, 0 = not ready)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{container}",
    .value_type = .double,
};

/// Describes how many times the container has restarted (since the last counter reset)
///
/// Notes: This value is pulled directly from the K8s API and the value can go indefinitely high and be reset to 0 at any time depending on how your kubelet is configured to prune dead containers. It is best to not depend too much on the exact value but rather look at it as either == 0, in which case you can conclude there were no restarts in the recent past, or ] 0, in which case you can conclude there were restarts in the recent past, and not try and analyze the value beyond that.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{restart}` | `Development` |
pub const k8s_container_restart_count = types.Metric{
    .name = "k8s.container.restart.count",
    .brief = "Describes how many times the container has restarted (since the last counter reset)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{restart}",
    .value_type = .double,
};

/// Describes the number of K8s containers that are currently in a state for a given reason
///
/// Notes: All possible container state reasons will be reported at each time interval to avoid missing metrics. Only the value corresponding to the current state reason will be non-zero.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{container}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.container.status.reason` | `Required` |
pub const k8s_container_status_reason = types.Metric{
    .name = "k8s.container.status.reason",
    .brief = "Describes the number of K8s containers that are currently in a state for a given reason",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{container}",
    .value_type = .double,
};

/// Describes the number of K8s containers that are currently in a given state
///
/// Notes: All possible container states will be reported at each time interval to avoid missing metrics. Only the value corresponding to the current state will be non-zero.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{container}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.container.status.state` | `Required` |
pub const k8s_container_status_state = types.Metric{
    .name = "k8s.container.status.state",
    .brief = "Describes the number of K8s containers that are currently in a given state",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{container}",
    .value_type = .double,
};

/// Maximum storage resource limit set for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_container_storage_limit = types.Metric{
    .name = "k8s.container.storage.limit",
    .brief = "Maximum storage resource limit set for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Storage resource requested for the container
///
/// Notes: See https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#resourcerequirements-v1-core for details.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_container_storage_request = types.Metric{
    .name = "k8s.container.storage.request",
    .brief = "Storage resource requested for the container",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The number of actively running jobs for a cronjob
///
/// Notes: This metric aligns with the `active` field of the [K8s CronJobStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#cronjobstatus-v1-batch).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{job}` | `Development` |
pub const k8s_cronjob_active_jobs = types.Metric{
    .name = "k8s.cronjob.active_jobs",
    .brief = "The number of actively running jobs for a cronjob",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{job}",
    .value_type = .double,
};

/// Number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod
///
/// Notes: This metric aligns with the `currentNumberScheduled` field of the [K8s DaemonSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#daemonsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{node}` | `Development` |
pub const k8s_daemonset_current_scheduled_nodes = types.Metric{
    .name = "k8s.daemonset.current_scheduled_nodes",
    .brief = "Number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{node}",
    .value_type = .double,
};

/// Number of nodes that should be running the daemon pod (including nodes currently running the daemon pod)
///
/// Notes: This metric aligns with the `desiredNumberScheduled` field of the [K8s DaemonSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#daemonsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{node}` | `Development` |
pub const k8s_daemonset_desired_scheduled_nodes = types.Metric{
    .name = "k8s.daemonset.desired_scheduled_nodes",
    .brief = "Number of nodes that should be running the daemon pod (including nodes currently running the daemon pod)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{node}",
    .value_type = .double,
};

/// Number of nodes that are running the daemon pod, but are not supposed to run the daemon pod
///
/// Notes: This metric aligns with the `numberMisscheduled` field of the [K8s DaemonSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#daemonsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{node}` | `Development` |
pub const k8s_daemonset_misscheduled_nodes = types.Metric{
    .name = "k8s.daemonset.misscheduled_nodes",
    .brief = "Number of nodes that are running the daemon pod, but are not supposed to run the daemon pod",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{node}",
    .value_type = .double,
};

/// Number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready
///
/// Notes: This metric aligns with the `numberReady` field of the [K8s DaemonSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#daemonsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{node}` | `Development` |
pub const k8s_daemonset_ready_nodes = types.Metric{
    .name = "k8s.daemonset.ready_nodes",
    .brief = "Number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{node}",
    .value_type = .double,
};

/// Total number of available replica pods (ready for at least minReadySeconds) targeted by this deployment
///
/// Notes: This metric aligns with the `availableReplicas` field of the [K8s DeploymentStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#deploymentstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_deployment_available_pods = types.Metric{
    .name = "k8s.deployment.available_pods",
    .brief = "Total number of available replica pods (ready for at least minReadySeconds) targeted by this deployment",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Number of desired replica pods in this deployment
///
/// Notes: This metric aligns with the `replicas` field of the [K8s DeploymentSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#deploymentspec-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_deployment_desired_pods = types.Metric{
    .name = "k8s.deployment.desired_pods",
    .brief = "Number of desired replica pods in this deployment",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Current number of replica pods managed by this horizontal pod autoscaler, as last seen by the autoscaler
///
/// Notes: This metric aligns with the `currentReplicas` field of the [K8s HorizontalPodAutoscalerStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#horizontalpodautoscalerstatus-v2-autoscaling)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_hpa_current_pods = types.Metric{
    .name = "k8s.hpa.current_pods",
    .brief = "Current number of replica pods managed by this horizontal pod autoscaler, as last seen by the autoscaler",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Desired number of replica pods managed by this horizontal pod autoscaler, as last calculated by the autoscaler
///
/// Notes: This metric aligns with the `desiredReplicas` field of the [K8s HorizontalPodAutoscalerStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#horizontalpodautoscalerstatus-v2-autoscaling)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_hpa_desired_pods = types.Metric{
    .name = "k8s.hpa.desired_pods",
    .brief = "Desired number of replica pods managed by this horizontal pod autoscaler, as last calculated by the autoscaler",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The upper limit for the number of replica pods to which the autoscaler can scale up
///
/// Notes: This metric aligns with the `maxReplicas` field of the [K8s HorizontalPodAutoscalerSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#horizontalpodautoscalerspec-v2-autoscaling)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_hpa_max_pods = types.Metric{
    .name = "k8s.hpa.max_pods",
    .brief = "The upper limit for the number of replica pods to which the autoscaler can scale up",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Target average utilization, in percentage, for CPU resource in HPA config.
///
/// Notes: This metric aligns with the `averageUtilization` field of the [K8s HPA MetricTarget](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#metrictarget-v2-autoscaling). If the type of the metric is [`ContainerResource`](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/#support-for-metrics-apis), the `k8s.container.name` attribute MUST be set to identify the specific container within the pod to which the metric applies.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.container.name` | `Conditionally_required`: if and only if k8s.hpa.metric.type is ContainerResource. |
/// | `k8s.hpa.metric.type` | `Recommended` |
pub const k8s_hpa_metric_target_cpu_average_utilization = types.Metric{
    .name = "k8s.hpa.metric.target.cpu.average_utilization",
    .brief = "Target average utilization, in percentage, for CPU resource in HPA config.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// Target average value for CPU resource in HPA config.
///
/// Notes: This metric aligns with the `averageValue` field of the [K8s HPA MetricTarget](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#metrictarget-v2-autoscaling). If the type of the metric is [`ContainerResource`](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/#support-for-metrics-apis), the `k8s.container.name` attribute MUST be set to identify the specific container within the pod to which the metric applies.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{cpu}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.container.name` | `Conditionally_required`: if and only if k8s.hpa.metric.type is ContainerResource |
/// | `k8s.hpa.metric.type` | `Recommended` |
pub const k8s_hpa_metric_target_cpu_average_value = types.Metric{
    .name = "k8s.hpa.metric.target.cpu.average_value",
    .brief = "Target average value for CPU resource in HPA config.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Target value for CPU resource in HPA config.
///
/// Notes: This metric aligns with the `value` field of the [K8s HPA MetricTarget](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#metrictarget-v2-autoscaling). If the type of the metric is [`ContainerResource`](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/#support-for-metrics-apis), the `k8s.container.name` attribute MUST be set to identify the specific container within the pod to which the metric applies.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{cpu}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.container.name` | `Conditionally_required`: if and only if k8s.hpa.metric.type is ContainerResource |
/// | `k8s.hpa.metric.type` | `Recommended` |
pub const k8s_hpa_metric_target_cpu_value = types.Metric{
    .name = "k8s.hpa.metric.target.cpu.value",
    .brief = "Target value for CPU resource in HPA config.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{cpu}",
    .value_type = .double,
};

/// The lower limit for the number of replica pods to which the autoscaler can scale down
///
/// Notes: This metric aligns with the `minReplicas` field of the [K8s HorizontalPodAutoscalerSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#horizontalpodautoscalerspec-v2-autoscaling)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_hpa_min_pods = types.Metric{
    .name = "k8s.hpa.min_pods",
    .brief = "The lower limit for the number of replica pods to which the autoscaler can scale down",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The number of pending and actively running pods for a job
///
/// Notes: This metric aligns with the `active` field of the [K8s JobStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#jobstatus-v1-batch).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_job_active_pods = types.Metric{
    .name = "k8s.job.active_pods",
    .brief = "The number of pending and actively running pods for a job",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The desired number of successfully finished pods the job should be run with
///
/// Notes: This metric aligns with the `completions` field of the [K8s JobSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#jobspec-v1-batch)..
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_job_desired_successful_pods = types.Metric{
    .name = "k8s.job.desired_successful_pods",
    .brief = "The desired number of successfully finished pods the job should be run with",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The number of pods which reached phase Failed for a job
///
/// Notes: This metric aligns with the `failed` field of the [K8s JobStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#jobstatus-v1-batch).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_job_failed_pods = types.Metric{
    .name = "k8s.job.failed_pods",
    .brief = "The number of pods which reached phase Failed for a job",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The max desired number of pods the job should run at any given time
///
/// Notes: This metric aligns with the `parallelism` field of the [K8s JobSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#jobspec-v1-batch).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_job_max_parallel_pods = types.Metric{
    .name = "k8s.job.max_parallel_pods",
    .brief = "The max desired number of pods the job should run at any given time",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The number of pods which reached phase Succeeded for a job
///
/// Notes: This metric aligns with the `succeeded` field of the [K8s JobStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#jobstatus-v1-batch).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_job_successful_pods = types.Metric{
    .name = "k8s.job.successful_pods",
    .brief = "The number of pods which reached phase Succeeded for a job",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Describes number of K8s namespaces that are currently in a given phase.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{namespace}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.namespace.phase` | `Required` |
pub const k8s_namespace_phase = types.Metric{
    .name = "k8s.namespace.phase",
    .brief = "Describes number of K8s namespaces that are currently in a given phase.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{namespace}",
    .value_type = .double,
};

/// Amount of cpu allocatable on the node
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_node_allocatable_cpu = types.Metric{
    .name = "k8s.node.allocatable.cpu",
    .brief = "Amount of cpu allocatable on the node",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Amount of ephemeral-storage allocatable on the node
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_node_allocatable_ephemeral_storage = types.Metric{
    .name = "k8s.node.allocatable.ephemeral_storage",
    .brief = "Amount of ephemeral-storage allocatable on the node",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Amount of memory allocatable on the node
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_node_allocatable_memory = types.Metric{
    .name = "k8s.node.allocatable.memory",
    .brief = "Amount of memory allocatable on the node",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Amount of pods allocatable on the node
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_node_allocatable_pods = types.Metric{
    .name = "k8s.node.allocatable.pods",
    .brief = "Amount of pods allocatable on the node",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Describes the condition of a particular Node.
///
/// Notes: All possible node condition pairs (type and status) will be reported at each time interval to avoid missing metrics. Condition pairs corresponding to the current conditions' statuses will be non-zero.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{node}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.node.condition.status` | `Required` |
/// | `k8s.node.condition.type` | `Required` |
pub const k8s_node_condition_status = types.Metric{
    .name = "k8s.node.condition.status",
    .brief = "Describes the condition of a particular Node.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{node}",
    .value_type = .double,
};

/// Total CPU time consumed
///
/// Notes: Total CPU time consumed by the specific Node on all available CPU cores
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
pub const k8s_node_cpu_time = types.Metric{
    .name = "k8s.node.cpu.time",
    .brief = "Total CPU time consumed",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Node's CPU usage, measured in cpus. Range from 0 to the number of allocatable CPUs
///
/// Notes: CPU usage of the specific Node on all available CPU cores, averaged over the sample window
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{cpu}` | `Development` |
pub const k8s_node_cpu_usage = types.Metric{
    .name = "k8s.node.cpu.usage",
    .brief = "Node's CPU usage, measured in cpus. Range from 0 to the number of allocatable CPUs",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Memory usage of the Node
///
/// Notes: Total memory usage of the Node
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `By` | `Development` |
pub const k8s_node_memory_usage = types.Metric{
    .name = "k8s.node.memory.usage",
    .brief = "Memory usage of the Node",
    .stability = .development,
    .instrument = .gauge,
    .unit = "By",
    .value_type = .double,
};

/// Node network errors
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const k8s_node_network_errors = types.Metric{
    .name = "k8s.node.network.errors",
    .brief = "Node network errors",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

/// Network bytes for the Node
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const k8s_node_network_io = types.Metric{
    .name = "k8s.node.network.io",
    .brief = "Network bytes for the Node",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// The time the Node has been running
///
/// Notes: Instrumentations SHOULD use a gauge with type `double` and measure uptime in seconds as a floating point number with the highest precision available. The actual accuracy would depend on the instrumentation and operating system.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const k8s_node_uptime = types.Metric{
    .name = "k8s.node.uptime",
    .brief = "The time the Node has been running",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Total CPU time consumed
///
/// Notes: Total CPU time consumed by the specific Pod on all available CPU cores
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
pub const k8s_pod_cpu_time = types.Metric{
    .name = "k8s.pod.cpu.time",
    .brief = "Total CPU time consumed",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Pod's CPU usage, measured in cpus. Range from 0 to the number of allocatable CPUs
///
/// Notes: CPU usage of the specific Pod on all available CPU cores, averaged over the sample window
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{cpu}` | `Development` |
pub const k8s_pod_cpu_usage = types.Metric{
    .name = "k8s.pod.cpu.usage",
    .brief = "Pod's CPU usage, measured in cpus. Range from 0 to the number of allocatable CPUs",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Memory usage of the Pod
///
/// Notes: Total memory usage of the Pod
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `By` | `Development` |
pub const k8s_pod_memory_usage = types.Metric{
    .name = "k8s.pod.memory.usage",
    .brief = "Memory usage of the Pod",
    .stability = .development,
    .instrument = .gauge,
    .unit = "By",
    .value_type = .double,
};

/// Pod network errors
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const k8s_pod_network_errors = types.Metric{
    .name = "k8s.pod.network.errors",
    .brief = "Pod network errors",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

/// Network bytes for the Pod
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const k8s_pod_network_io = types.Metric{
    .name = "k8s.pod.network.io",
    .brief = "Network bytes for the Pod",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// The time the Pod has been running
///
/// Notes: Instrumentations SHOULD use a gauge with type `double` and measure uptime in seconds as a floating point number with the highest precision available. The actual accuracy would depend on the instrumentation and operating system.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const k8s_pod_uptime = types.Metric{
    .name = "k8s.pod.uptime",
    .brief = "The time the Pod has been running",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Total number of available replica pods (ready for at least minReadySeconds) targeted by this replicaset
///
/// Notes: This metric aligns with the `availableReplicas` field of the [K8s ReplicaSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#replicasetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_replicaset_available_pods = types.Metric{
    .name = "k8s.replicaset.available_pods",
    .brief = "Total number of available replica pods (ready for at least minReadySeconds) targeted by this replicaset",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Number of desired replica pods in this replicaset
///
/// Notes: This metric aligns with the `replicas` field of the [K8s ReplicaSetSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#replicasetspec-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_replicaset_desired_pods = types.Metric{
    .name = "k8s.replicaset.desired_pods",
    .brief = "Number of desired replica pods in this replicaset",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Deprecated, use `k8s.replicationcontroller.available_pods` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `k8s.replicationcontroller.available_pods`.
pub const k8s_replication_controller_available_pods = types.Metric{
    .name = "k8s.replication_controller.available_pods",
    .brief = "Deprecated, use `k8s.replicationcontroller.available_pods` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `k8s.replicationcontroller.available_pods`.",
};

/// Deprecated, use `k8s.replicationcontroller.desired_pods` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `k8s.replicationcontroller.desired_pods`.
pub const k8s_replication_controller_desired_pods = types.Metric{
    .name = "k8s.replication_controller.desired_pods",
    .brief = "Deprecated, use `k8s.replicationcontroller.desired_pods` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `k8s.replicationcontroller.desired_pods`.",
};

/// Total number of available replica pods (ready for at least minReadySeconds) targeted by this replication controller
///
/// Notes: This metric aligns with the `availableReplicas` field of the [K8s ReplicationControllerStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#replicationcontrollerstatus-v1-core)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_replicationcontroller_available_pods = types.Metric{
    .name = "k8s.replicationcontroller.available_pods",
    .brief = "Total number of available replica pods (ready for at least minReadySeconds) targeted by this replication controller",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Number of desired replica pods in this replication controller
///
/// Notes: This metric aligns with the `replicas` field of the [K8s ReplicationControllerSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#replicationcontrollerspec-v1-core)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_replicationcontroller_desired_pods = types.Metric{
    .name = "k8s.replicationcontroller.desired_pods",
    .brief = "Number of desired replica pods in this replication controller",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The CPU limits in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_resourcequota_cpu_limit_hard = types.Metric{
    .name = "k8s.resourcequota.cpu.limit.hard",
    .brief = "The CPU limits in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// The CPU limits in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_resourcequota_cpu_limit_used = types.Metric{
    .name = "k8s.resourcequota.cpu.limit.used",
    .brief = "The CPU limits in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// The CPU requests in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_resourcequota_cpu_request_hard = types.Metric{
    .name = "k8s.resourcequota.cpu.request.hard",
    .brief = "The CPU requests in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// The CPU requests in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const k8s_resourcequota_cpu_request_used = types.Metric{
    .name = "k8s.resourcequota.cpu.request.used",
    .brief = "The CPU requests in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// The sum of local ephemeral storage limits in the namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_ephemeral_storage_limit_hard = types.Metric{
    .name = "k8s.resourcequota.ephemeral_storage.limit.hard",
    .brief = "The sum of local ephemeral storage limits in the namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The sum of local ephemeral storage limits in the namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_ephemeral_storage_limit_used = types.Metric{
    .name = "k8s.resourcequota.ephemeral_storage.limit.used",
    .brief = "The sum of local ephemeral storage limits in the namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The sum of local ephemeral storage requests in the namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_ephemeral_storage_request_hard = types.Metric{
    .name = "k8s.resourcequota.ephemeral_storage.request.hard",
    .brief = "The sum of local ephemeral storage requests in the namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The sum of local ephemeral storage requests in the namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_ephemeral_storage_request_used = types.Metric{
    .name = "k8s.resourcequota.ephemeral_storage.request.used",
    .brief = "The sum of local ephemeral storage requests in the namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The huge page requests in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{hugepage}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.hugepage.size` | `Required` |
pub const k8s_resourcequota_hugepage_count_request_hard = types.Metric{
    .name = "k8s.resourcequota.hugepage_count.request.hard",
    .brief = "The huge page requests in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{hugepage}",
    .value_type = .double,
};

/// The huge page requests in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{hugepage}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.hugepage.size` | `Required` |
pub const k8s_resourcequota_hugepage_count_request_used = types.Metric{
    .name = "k8s.resourcequota.hugepage_count.request.used",
    .brief = "The huge page requests in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{hugepage}",
    .value_type = .double,
};

/// The memory limits in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_memory_limit_hard = types.Metric{
    .name = "k8s.resourcequota.memory.limit.hard",
    .brief = "The memory limits in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The memory limits in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_memory_limit_used = types.Metric{
    .name = "k8s.resourcequota.memory.limit.used",
    .brief = "The memory limits in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The memory requests in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_memory_request_hard = types.Metric{
    .name = "k8s.resourcequota.memory.request.hard",
    .brief = "The memory requests in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The memory requests in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const k8s_resourcequota_memory_request_used = types.Metric{
    .name = "k8s.resourcequota.memory.request.used",
    .brief = "The memory requests in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The object count limits in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{object}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.resourcequota.resource_name` | `Required` |
pub const k8s_resourcequota_object_count_hard = types.Metric{
    .name = "k8s.resourcequota.object_count.hard",
    .brief = "The object count limits in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{object}",
    .value_type = .double,
};

/// The object count limits in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{object}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.resourcequota.resource_name` | `Required` |
pub const k8s_resourcequota_object_count_used = types.Metric{
    .name = "k8s.resourcequota.object_count.used",
    .brief = "The object count limits in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{object}",
    .value_type = .double,
};

/// The total number of PersistentVolumeClaims that can exist in the namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core). The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{persistentvolumeclaim}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.storageclass.name` | `Conditionally_required`: The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.  |
pub const k8s_resourcequota_persistentvolumeclaim_count_hard = types.Metric{
    .name = "k8s.resourcequota.persistentvolumeclaim_count.hard",
    .brief = "The total number of PersistentVolumeClaims that can exist in the namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{persistentvolumeclaim}",
    .value_type = .double,
};

/// The total number of PersistentVolumeClaims that can exist in the namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core). The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{persistentvolumeclaim}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.storageclass.name` | `Conditionally_required`: The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.  |
pub const k8s_resourcequota_persistentvolumeclaim_count_used = types.Metric{
    .name = "k8s.resourcequota.persistentvolumeclaim_count.used",
    .brief = "The total number of PersistentVolumeClaims that can exist in the namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{persistentvolumeclaim}",
    .value_type = .double,
};

/// The storage requests in a specific namespace.
/// The value represents the configured quota limit of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `hard` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core). The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.storageclass.name` | `Conditionally_required`: The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.  |
pub const k8s_resourcequota_storage_request_hard = types.Metric{
    .name = "k8s.resourcequota.storage.request.hard",
    .brief = "The storage requests in a specific namespace. The value represents the configured quota limit of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The storage requests in a specific namespace.
/// The value represents the current observed total usage of the resource in the namespace.
///
///
/// Notes: This metric is retrieved from the `used` field of the [K8s ResourceQuotaStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.32/#resourcequotastatus-v1-core). The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `k8s.storageclass.name` | `Conditionally_required`: The `k8s.storageclass.name` should be required when a resource quota is defined for a specific storage class.  |
pub const k8s_resourcequota_storage_request_used = types.Metric{
    .name = "k8s.resourcequota.storage.request.used",
    .brief = "The storage requests in a specific namespace. The value represents the current observed total usage of the resource in the namespace.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The number of replica pods created by the statefulset controller from the statefulset version indicated by currentRevision
///
/// Notes: This metric aligns with the `currentReplicas` field of the [K8s StatefulSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#statefulsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_statefulset_current_pods = types.Metric{
    .name = "k8s.statefulset.current_pods",
    .brief = "The number of replica pods created by the statefulset controller from the statefulset version indicated by currentRevision",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Number of desired replica pods in this statefulset
///
/// Notes: This metric aligns with the `replicas` field of the [K8s StatefulSetSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#statefulsetspec-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_statefulset_desired_pods = types.Metric{
    .name = "k8s.statefulset.desired_pods",
    .brief = "Number of desired replica pods in this statefulset",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// The number of replica pods created for this statefulset with a Ready Condition
///
/// Notes: This metric aligns with the `readyReplicas` field of the [K8s StatefulSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#statefulsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_statefulset_ready_pods = types.Metric{
    .name = "k8s.statefulset.ready_pods",
    .brief = "The number of replica pods created for this statefulset with a Ready Condition",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Number of replica pods created by the statefulset controller from the statefulset version indicated by updateRevision
///
/// Notes: This metric aligns with the `updatedReplicas` field of the [K8s StatefulSetStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#statefulsetstatus-v1-apps).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{pod}` | `Development` |
pub const k8s_statefulset_updated_pods = types.Metric{
    .name = "k8s.statefulset.updated_pods",
    .brief = "Number of replica pods created by the statefulset controller from the statefulset version indicated by updateRevision",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{pod}",
    .value_type = .double,
};

/// Number of connections that are currently active on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
pub const kestrel_active_connections = types.Metric{
    .name = "kestrel.active_connections",
    .brief = "Number of connections that are currently active on the server.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// Number of TLS handshakes that are currently in progress on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{handshake}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
pub const kestrel_active_tls_handshakes = types.Metric{
    .name = "kestrel.active_tls_handshakes",
    .brief = "Number of TLS handshakes that are currently in progress on the server.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{handshake}",
    .value_type = .double,
};

/// The duration of connections on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: if and only if an error has occurred. |
/// | `network.protocol.name` | `Recommended` |
/// | `network.protocol.version` | `Recommended` |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
/// | `tls.protocol.version` | `Recommended` |
pub const kestrel_connection_duration = types.Metric{
    .name = "kestrel.connection.duration",
    .brief = "The duration of connections on the server.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of connections that are currently queued and are waiting to start.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
pub const kestrel_queued_connections = types.Metric{
    .name = "kestrel.queued_connections",
    .brief = "Number of connections that are currently queued and are waiting to start.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// Number of HTTP requests on multiplexed connections (HTTP/2 and HTTP/3) that are currently queued and are waiting to start.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{request}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.protocol.name` | `Recommended` |
/// | `network.protocol.version` | `Recommended` |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
pub const kestrel_queued_requests = types.Metric{
    .name = "kestrel.queued_requests",
    .brief = "Number of HTTP requests on multiplexed connections (HTTP/2 and HTTP/3) that are currently queued and are waiting to start.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{request}",
    .value_type = .double,
};

/// Number of connections rejected by the server.
///
/// Notes: Connections are rejected when the currently active count exceeds the value configured with `MaxConcurrentConnections`. Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{connection}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
pub const kestrel_rejected_connections = types.Metric{
    .name = "kestrel.rejected_connections",
    .brief = "Number of connections rejected by the server.",
    .stability = .stable,
    .instrument = .counter,
    .unit = "{connection}",
    .value_type = .double,
};

/// The duration of TLS handshakes on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: if and only if an error has occurred. |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
/// | `tls.protocol.version` | `Recommended` |
pub const kestrel_tls_handshake_duration = types.Metric{
    .name = "kestrel.tls_handshake.duration",
    .brief = "The duration of TLS handshakes on the server.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Number of connections that are currently upgraded (WebSockets). .
///
/// Notes: The counter only tracks HTTP/1.1 connections. Meter name: `Microsoft.AspNetCore.Server.Kestrel`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.transport` | `Recommended` |
/// | `network.type` | `{"recommended": "if the transport is `tcp` or `udp`"}` |
/// | `server.address` | `Recommended` |
/// | `server.port` | `Recommended` |
pub const kestrel_upgraded_connections = types.Metric{
    .name = "kestrel.upgraded_connections",
    .brief = "Number of connections that are currently upgraded (WebSockets). .",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// Number of messages that were delivered to the application.
///
/// Notes: Records the number of messages pulled from the broker or number of messages dispatched to the application in push-based scenarios. The metric SHOULD be reported once per message delivery. For example, if receiving and processing operations are both instrumented for a single message delivery, this counter is incremented when the message is received and not reported when it is processed.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{message}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.consumer.group.name` | `Conditionally_required`: if applicable. |
/// | `messaging.destination.name` | `Conditionally_required`: if and only if `messaging.destination.name` is known to have low cardinality. Otherwise, `messaging.destination.template` MAY be populated. |
/// | `messaging.destination.partition.id` | `Recommended` |
/// | `messaging.destination.subscription.name` | `Conditionally_required`: if applicable. |
/// | `messaging.destination.template` | `Conditionally_required`: if available. |
/// | `messaging.operation.name` | `Required` |
/// | `messaging.system` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
pub const messaging_client_consumed_messages = types.Metric{
    .name = "messaging.client.consumed.messages",
    .brief = "Number of messages that were delivered to the application.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{message}",
    .value_type = .double,
};

/// Duration of messaging operation initiated by a producer or consumer client.
///
/// Notes: This metric SHOULD NOT be used to report processing duration - processing duration is reported in `messaging.process.duration` metric.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.consumer.group.name` | `Conditionally_required`: if applicable. |
/// | `messaging.destination.name` | `Conditionally_required`: if and only if `messaging.destination.name` is known to have low cardinality. Otherwise, `messaging.destination.template` MAY be populated. |
/// | `messaging.destination.partition.id` | `Recommended` |
/// | `messaging.destination.subscription.name` | `Conditionally_required`: if applicable. |
/// | `messaging.destination.template` | `Conditionally_required`: if available. |
/// | `messaging.operation.name` | `Required` |
/// | `messaging.operation.type` | `Conditionally_required`: If applicable. |
/// | `messaging.system` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
pub const messaging_client_operation_duration = types.Metric{
    .name = "messaging.client.operation.duration",
    .brief = "Duration of messaging operation initiated by a producer or consumer client.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Deprecated. Use `messaging.client.sent.messages` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{message}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.destination.name` | `Conditionally_required`: if and only if `messaging.destination.name` is known to have low cardinality. Otherwise, `messaging.destination.template` MAY be populated. |
/// | `messaging.destination.partition.id` | `Recommended` |
/// | `messaging.destination.template` | `Conditionally_required`: if available. |
/// | `messaging.operation.name` | `Required` |
/// | `messaging.system` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `messaging.client.sent.messages`.
pub const messaging_client_published_messages = types.Metric{
    .name = "messaging.client.published.messages",
    .brief = "Deprecated. Use `messaging.client.sent.messages` instead.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{message}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `messaging.client.sent.messages`.",
};

/// Number of messages producer attempted to send to the broker.
///
/// Notes: This metric MUST NOT count messages that were created but haven't yet been sent.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{message}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.destination.name` | `Conditionally_required`: if and only if `messaging.destination.name` is known to have low cardinality. Otherwise, `messaging.destination.template` MAY be populated. |
/// | `messaging.destination.partition.id` | `Recommended` |
/// | `messaging.destination.template` | `Conditionally_required`: if available. |
/// | `messaging.operation.name` | `Required` |
/// | `messaging.system` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
pub const messaging_client_sent_messages = types.Metric{
    .name = "messaging.client.sent.messages",
    .brief = "Number of messages producer attempted to send to the broker.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{message}",
    .value_type = .double,
};

/// Duration of processing operation.
///
/// Notes: This metric MUST be reported for operations with `messaging.operation.type` that matches `process`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.consumer.group.name` | `Conditionally_required`: if applicable. |
/// | `messaging.destination.name` | `Conditionally_required`: if and only if `messaging.destination.name` is known to have low cardinality. Otherwise, `messaging.destination.template` MAY be populated. |
/// | `messaging.destination.partition.id` | `Recommended` |
/// | `messaging.destination.subscription.name` | `Conditionally_required`: if applicable. |
/// | `messaging.destination.template` | `Conditionally_required`: if available. |
/// | `messaging.operation.name` | `Required` |
/// | `messaging.system` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
pub const messaging_process_duration = types.Metric{
    .name = "messaging.process.duration",
    .brief = "Duration of processing operation.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Deprecated. Use `messaging.client.consumed.messages` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{message}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.operation.name` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `messaging.client.consumed.messages`.
pub const messaging_process_messages = types.Metric{
    .name = "messaging.process.messages",
    .brief = "Deprecated. Use `messaging.client.consumed.messages` instead.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{message}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `messaging.client.consumed.messages`.",
};

/// Deprecated. Use `messaging.client.operation.duration` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.operation.name` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `messaging.client.operation.duration`.
pub const messaging_publish_duration = types.Metric{
    .name = "messaging.publish.duration",
    .brief = "Deprecated. Use `messaging.client.operation.duration` instead.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
    .deprecated_reason = "Replaced by `messaging.client.operation.duration`.",
};

/// Deprecated. Use `messaging.client.sent.messages` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{message}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.operation.name` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `messaging.client.sent.messages`.
pub const messaging_publish_messages = types.Metric{
    .name = "messaging.publish.messages",
    .brief = "Deprecated. Use `messaging.client.sent.messages` instead.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{message}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `messaging.client.sent.messages`.",
};

/// Deprecated. Use `messaging.client.operation.duration` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.operation.name` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `messaging.client.operation.duration`.
pub const messaging_receive_duration = types.Metric{
    .name = "messaging.receive.duration",
    .brief = "Deprecated. Use `messaging.client.operation.duration` instead.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
    .deprecated_reason = "Replaced by `messaging.client.operation.duration`.",
};

/// Deprecated. Use `messaging.client.consumed.messages` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{message}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If and only if the messaging operation has failed. |
/// | `messaging.operation.name` | `Required` |
/// | `server.address` | `Conditionally_required`: If available. |
/// | `server.port` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `messaging.client.consumed.messages`.
pub const messaging_receive_messages = types.Metric{
    .name = "messaging.receive.messages",
    .brief = "Deprecated. Use `messaging.client.consumed.messages` instead.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{message}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `messaging.client.consumed.messages`.",
};

/// Event loop maximum delay.
///
/// Notes: Value can be retrieved from value `histogram.max` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_max = types.Metric{
    .name = "nodejs.eventloop.delay.max",
    .brief = "Event loop maximum delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Event loop mean delay.
///
/// Notes: Value can be retrieved from value `histogram.mean` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_mean = types.Metric{
    .name = "nodejs.eventloop.delay.mean",
    .brief = "Event loop mean delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Event loop minimum delay.
///
/// Notes: Value can be retrieved from value `histogram.min` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_min = types.Metric{
    .name = "nodejs.eventloop.delay.min",
    .brief = "Event loop minimum delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Event loop 50 percentile delay.
///
/// Notes: Value can be retrieved from value `histogram.percentile(50)` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_p50 = types.Metric{
    .name = "nodejs.eventloop.delay.p50",
    .brief = "Event loop 50 percentile delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Event loop 90 percentile delay.
///
/// Notes: Value can be retrieved from value `histogram.percentile(90)` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_p90 = types.Metric{
    .name = "nodejs.eventloop.delay.p90",
    .brief = "Event loop 90 percentile delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Event loop 99 percentile delay.
///
/// Notes: Value can be retrieved from value `histogram.percentile(99)` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_p99 = types.Metric{
    .name = "nodejs.eventloop.delay.p99",
    .brief = "Event loop 99 percentile delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Event loop standard deviation delay.
///
/// Notes: Value can be retrieved from value `histogram.stddev` of [`perf_hooks.monitorEventLoopDelay([options])`](https://nodejs.org/api/perf_hooks.html#perf_hooksmonitoreventloopdelayoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const nodejs_eventloop_delay_stddev = types.Metric{
    .name = "nodejs.eventloop.delay.stddev",
    .brief = "Event loop standard deviation delay.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Cumulative duration of time the event loop has been in each state.
///
/// Notes: Value can be retrieved from [`performance.eventLoopUtilization([utilization1[, utilization2]])`](https://nodejs.org/api/perf_hooks.html#performanceeventlooputilizationutilization1-utilization2)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `nodejs.eventloop.state` | `Required` |
pub const nodejs_eventloop_time = types.Metric{
    .name = "nodejs.eventloop.time",
    .brief = "Cumulative duration of time the event loop has been in each state.",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Event loop utilization.
///
/// Notes: The value range is [0.0, 1.0] and can be retrieved from [`performance.eventLoopUtilization([utilization1[, utilization2]])`](https://nodejs.org/api/perf_hooks.html#performanceeventlooputilizationutilization1-utilization2)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
pub const nodejs_eventloop_utilization = types.Metric{
    .name = "nodejs.eventloop.utilization",
    .brief = "Event loop utilization.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// The number of log records for which the export has finished, either successful or failed
///
/// Notes: For successful exports, `error.type` MUST NOT be set. For failed exports, `error.type` MUST contain the failure cause. For exporters with partial success semantics (e.g. OTLP with `rejected_log_records`), rejected log records MUST count as failed and only non-rejected log records count as success. If no rejection reason is available, `rejected` SHOULD be used as value for `error.type`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{log_record}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Recommended` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_log_exported = types.Metric{
    .name = "otel.sdk.exporter.log.exported",
    .brief = "The number of log records for which the export has finished, either successful or failed",
    .stability = .development,
    .instrument = .counter,
    .unit = "{log_record}",
    .value_type = .double,
};

/// The number of log records which were passed to the exporter, but that have not been exported yet (neither successful, nor failed)
///
/// Notes: For successful exports, `error.type` MUST NOT be set. For failed exports, `error.type` MUST contain the failure cause.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{log_record}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_log_inflight = types.Metric{
    .name = "otel.sdk.exporter.log.inflight",
    .brief = "The number of log records which were passed to the exporter, but that have not been exported yet (neither successful, nor failed)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{log_record}",
    .value_type = .double,
};

/// The number of metric data points for which the export has finished, either successful or failed
///
/// Notes: For successful exports, `error.type` MUST NOT be set. For failed exports, `error.type` MUST contain the failure cause. For exporters with partial success semantics (e.g. OTLP with `rejected_data_points`), rejected data points MUST count as failed and only non-rejected data points count as success. If no rejection reason is available, `rejected` SHOULD be used as value for `error.type`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{data_point}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Recommended` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_metric_data_point_exported = types.Metric{
    .name = "otel.sdk.exporter.metric_data_point.exported",
    .brief = "The number of metric data points for which the export has finished, either successful or failed",
    .stability = .development,
    .instrument = .counter,
    .unit = "{data_point}",
    .value_type = .double,
};

/// The number of metric data points which were passed to the exporter, but that have not been exported yet (neither successful, nor failed)
///
/// Notes: For successful exports, `error.type` MUST NOT be set. For failed exports, `error.type` MUST contain the failure cause.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{data_point}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_metric_data_point_inflight = types.Metric{
    .name = "otel.sdk.exporter.metric_data_point.inflight",
    .brief = "The number of metric data points which were passed to the exporter, but that have not been exported yet (neither successful, nor failed)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{data_point}",
    .value_type = .double,
};

/// The duration of exporting a batch of telemetry records.
///
/// Notes: This metric defines successful operations using the full success definitions for [http](https://github.com/open-telemetry/opentelemetry-proto/blob/v1.5.0/docs/specification.md#full-success-1) and [grpc](https://github.com/open-telemetry/opentelemetry-proto/blob/v1.5.0/docs/specification.md#full-success). Anything else is defined as an unsuccessful operation. For successful operations, `error.type` MUST NOT be set. For unsuccessful export operations, `error.type` MUST contain a relevant failure cause.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Conditionally_required`: If operation has ended with an error |
/// | `http.response.status_code` | `{"recommended": "when applicable"}` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `rpc.grpc.status_code` | `{"recommended": "when applicable"}` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_operation_duration = types.Metric{
    .name = "otel.sdk.exporter.operation.duration",
    .brief = "The duration of exporting a batch of telemetry records.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The number of spans for which the export has finished, either successful or failed
///
/// Notes: For successful exports, `error.type` MUST NOT be set. For failed exports, `error.type` MUST contain the failure cause. For exporters with partial success semantics (e.g. OTLP with `rejected_spans`), rejected spans MUST count as failed and only non-rejected spans count as success. If no rejection reason is available, `rejected` SHOULD be used as value for `error.type`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Recommended` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_span_exported = types.Metric{
    .name = "otel.sdk.exporter.span.exported",
    .brief = "The number of spans for which the export has finished, either successful or failed",
    .stability = .development,
    .instrument = .counter,
    .unit = "{span}",
    .value_type = .double,
};

/// Deprecated, use `otel.sdk.exporter.span.exported` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `otel.sdk.exporter.span.exported`.
pub const otel_sdk_exporter_span_exported_count = types.Metric{
    .name = "otel.sdk.exporter.span.exported.count",
    .brief = "Deprecated, use `otel.sdk.exporter.span.exported` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `otel.sdk.exporter.span.exported`.",
};

/// The number of spans which were passed to the exporter, but that have not been exported yet (neither successful, nor failed)
///
/// Notes: For successful exports, `error.type` MUST NOT be set. For failed exports, `error.type` MUST contain the failure cause.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
/// | `server.address` | `{"recommended": "when applicable"}` |
/// | `server.port` | `{"recommended": "when applicable"}` |
pub const otel_sdk_exporter_span_inflight = types.Metric{
    .name = "otel.sdk.exporter.span.inflight",
    .brief = "The number of spans which were passed to the exporter, but that have not been exported yet (neither successful, nor failed)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
};

/// Deprecated, use `otel.sdk.exporter.span.inflight` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `otel.sdk.exporter.span.inflight`.
pub const otel_sdk_exporter_span_inflight_count = types.Metric{
    .name = "otel.sdk.exporter.span.inflight.count",
    .brief = "Deprecated, use `otel.sdk.exporter.span.inflight` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `otel.sdk.exporter.span.inflight`.",
};

/// The number of logs submitted to enabled SDK Loggers
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{log_record}` | `Development` |
pub const otel_sdk_log_created = types.Metric{
    .name = "otel.sdk.log.created",
    .brief = "The number of logs submitted to enabled SDK Loggers",
    .stability = .development,
    .instrument = .counter,
    .unit = "{log_record}",
    .value_type = .double,
};

/// The duration of the collect operation of the metric reader.
///
/// Notes: For successful collections, `error.type` MUST NOT be set. For failed collections, `error.type` SHOULD contain the failure cause. It can happen that metrics collection is successful for some MetricProducers, while others fail. In that case `error.type` SHOULD be set to any of the failure causes.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Recommended` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_metric_reader_collection_duration = types.Metric{
    .name = "otel.sdk.metric_reader.collection.duration",
    .brief = "The duration of the collect operation of the metric reader.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// The number of log records for which the processing has finished, either successful or failed
///
/// Notes: For successful processing, `error.type` MUST NOT be set. For failed processing, `error.type` MUST contain the failure cause. For the SDK Simple and Batching Log Record Processor a log record is considered to be processed already when it has been submitted to the exporter, not when the corresponding export call has finished.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{log_record}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Recommended` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_processor_log_processed = types.Metric{
    .name = "otel.sdk.processor.log.processed",
    .brief = "The number of log records for which the processing has finished, either successful or failed",
    .stability = .development,
    .instrument = .counter,
    .unit = "{log_record}",
    .value_type = .double,
};

/// The maximum number of log records the queue of a given instance of an SDK Log Record processor can hold
///
/// Notes: Only applies to Log Record processors which use a queue, e.g. the SDK Batching Log Record Processor.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{log_record}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_processor_log_queue_capacity = types.Metric{
    .name = "otel.sdk.processor.log.queue.capacity",
    .brief = "The maximum number of log records the queue of a given instance of an SDK Log Record processor can hold",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{log_record}",
    .value_type = .double,
};

/// The number of log records in the queue of a given instance of an SDK log processor
///
/// Notes: Only applies to log record processors which use a queue, e.g. the SDK Batching Log Record Processor.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{log_record}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_processor_log_queue_size = types.Metric{
    .name = "otel.sdk.processor.log.queue.size",
    .brief = "The number of log records in the queue of a given instance of an SDK log processor",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{log_record}",
    .value_type = .double,
};

/// The number of spans for which the processing has finished, either successful or failed
///
/// Notes: For successful processing, `error.type` MUST NOT be set. For failed processing, `error.type` MUST contain the failure cause. For the SDK Simple and Batching Span Processor a span is considered to be processed already when it has been submitted to the exporter, not when the corresponding export call has finished.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `error.type` | `Recommended` |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_processor_span_processed = types.Metric{
    .name = "otel.sdk.processor.span.processed",
    .brief = "The number of spans for which the processing has finished, either successful or failed",
    .stability = .development,
    .instrument = .counter,
    .unit = "{span}",
    .value_type = .double,
};

/// Deprecated, use `otel.sdk.processor.span.processed` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `otel.sdk.processor.span.processed`.
pub const otel_sdk_processor_span_processed_count = types.Metric{
    .name = "otel.sdk.processor.span.processed.count",
    .brief = "Deprecated, use `otel.sdk.processor.span.processed` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `otel.sdk.processor.span.processed`.",
};

/// The maximum number of spans the queue of a given instance of an SDK span processor can hold
///
/// Notes: Only applies to span processors which use a queue, e.g. the SDK Batching Span Processor.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_processor_span_queue_capacity = types.Metric{
    .name = "otel.sdk.processor.span.queue.capacity",
    .brief = "The maximum number of spans the queue of a given instance of an SDK span processor can hold",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
};

/// The number of spans in the queue of a given instance of an SDK span processor
///
/// Notes: Only applies to span processors which use a queue, e.g. the SDK Batching Span Processor.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.component.name` | `Recommended` |
/// | `otel.component.type` | `Recommended` |
pub const otel_sdk_processor_span_queue_size = types.Metric{
    .name = "otel.sdk.processor.span.queue.size",
    .brief = "The number of spans in the queue of a given instance of an SDK span processor",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
};

/// Use `otel.sdk.span.started` minus `otel.sdk.span.live` to derive this value.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{span}` | `Development` |
///
/// Note: This metric is deprecated. Obsoleted.
pub const otel_sdk_span_ended = types.Metric{
    .name = "otel.sdk.span.ended",
    .brief = "Use `otel.sdk.span.started` minus `otel.sdk.span.live` to derive this value.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{span}",
    .value_type = .double,
    .deprecated_reason = "Obsoleted.",
};

/// Use `otel.sdk.span.started` minus `otel.sdk.span.live` to derive this value.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{span}` | `Development` |
///
/// Note: This metric is deprecated. Obsoleted.
pub const otel_sdk_span_ended_count = types.Metric{
    .name = "otel.sdk.span.ended.count",
    .brief = "Use `otel.sdk.span.started` minus `otel.sdk.span.live` to derive this value.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{span}",
    .value_type = .double,
    .deprecated_reason = "Obsoleted.",
};

/// The number of created spans with `recording=true` for which the end operation has not been called yet
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.span.sampling_result` | `Recommended` |
pub const otel_sdk_span_live = types.Metric{
    .name = "otel.sdk.span.live",
    .brief = "The number of created spans with `recording=true` for which the end operation has not been called yet",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
};

/// Deprecated, use `otel.sdk.span.live` instead.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{span}` | `Development` |
///
/// Note: This metric is deprecated. Replaced by `otel.sdk.span.live`.
pub const otel_sdk_span_live_count = types.Metric{
    .name = "otel.sdk.span.live.count",
    .brief = "Deprecated, use `otel.sdk.span.live` instead.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{span}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `otel.sdk.span.live`.",
};

/// The number of created spans
///
/// Notes: Implementations MUST record this metric for all spans, even for non-recording ones.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{span}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `otel.span.parent.origin` | `Recommended` |
/// | `otel.span.sampling_result` | `Recommended` |
pub const otel_sdk_span_started = types.Metric{
    .name = "otel.sdk.span.started",
    .brief = "The number of created spans",
    .stability = .development,
    .instrument = .counter,
    .unit = "{span}",
    .value_type = .double,
};

/// Number of times the process has been context switched.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{context_switch}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `process.context_switch_type` | `Recommended` |
pub const process_context_switches = types.Metric{
    .name = "process.context_switches",
    .brief = "Number of times the process has been context switched.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{context_switch}",
    .value_type = .double,
};

/// Total CPU seconds broken down by different states.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.mode` | `Recommended` |
pub const process_cpu_time = types.Metric{
    .name = "process.cpu.time",
    .brief = "Total CPU seconds broken down by different states.",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// Difference in process.cpu.time since the last measurement, divided by the elapsed time and number of CPUs available to the process.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.mode` | `Recommended` |
pub const process_cpu_utilization = types.Metric{
    .name = "process.cpu.utilization",
    .brief = "Difference in process.cpu.time since the last measurement, divided by the elapsed time and number of CPUs available to the process.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// Disk bytes transferred.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `disk.io.direction` | `Recommended` |
pub const process_disk_io = types.Metric{
    .name = "process.disk.io",
    .brief = "Disk bytes transferred.",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// The amount of physical memory in use.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const process_memory_usage = types.Metric{
    .name = "process.memory.usage",
    .brief = "The amount of physical memory in use.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The amount of committed virtual memory.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const process_memory_virtual = types.Metric{
    .name = "process.memory.virtual",
    .brief = "The amount of committed virtual memory.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Network bytes transferred.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.io.direction` | `Recommended` |
pub const process_network_io = types.Metric{
    .name = "process.network.io",
    .brief = "Network bytes transferred.",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// Number of file descriptors in use by the process.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{file_descriptor}` | `Development` |
pub const process_open_file_descriptor_count = types.Metric{
    .name = "process.open_file_descriptor.count",
    .brief = "Number of file descriptors in use by the process.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{file_descriptor}",
    .value_type = .double,
};

/// Number of page faults the process has made.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{fault}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `process.paging.fault_type` | `Recommended` |
pub const process_paging_faults = types.Metric{
    .name = "process.paging.faults",
    .brief = "Number of page faults the process has made.",
    .stability = .development,
    .instrument = .counter,
    .unit = "{fault}",
    .value_type = .double,
};

/// Process threads count.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{thread}` | `Development` |
pub const process_thread_count = types.Metric{
    .name = "process.thread.count",
    .brief = "Process threads count.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{thread}",
    .value_type = .double,
};

/// The time the process has been running.
///
/// Notes: Instrumentations SHOULD use a gauge with type `double` and measure uptime in seconds as a floating point number with the highest precision available. The actual accuracy would depend on the instrumentation and operating system.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const process_uptime = types.Metric{
    .name = "process.uptime",
    .brief = "The time the process has been running.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Measures the duration of outbound RPC.
///
/// Notes: While streaming RPCs may record this metric as start-of-batch to end-of-batch, it's hard to interpret in practice. **Streaming**: N/A.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `ms` | `Development` |
pub const rpc_client_duration = types.Metric{
    .name = "rpc.client.duration",
    .brief = "Measures the duration of outbound RPC.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "ms",
    .value_type = .double,
};

/// Measures the size of RPC request messages (uncompressed).
///
/// Notes: **Streaming**: Recorded per message in a streaming batch
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
pub const rpc_client_request_size = types.Metric{
    .name = "rpc.client.request.size",
    .brief = "Measures the size of RPC request messages (uncompressed).",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Measures the number of messages received per RPC.
///
/// Notes: Should be 1 for all non-streaming RPCs. **Streaming**: This metric is required for server and client streaming RPCs
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{count}` | `Development` |
pub const rpc_client_requests_per_rpc = types.Metric{
    .name = "rpc.client.requests_per_rpc",
    .brief = "Measures the number of messages received per RPC.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{count}",
    .value_type = .double,
};

/// Measures the size of RPC response messages (uncompressed).
///
/// Notes: **Streaming**: Recorded per response in a streaming batch
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
pub const rpc_client_response_size = types.Metric{
    .name = "rpc.client.response.size",
    .brief = "Measures the size of RPC response messages (uncompressed).",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Measures the number of messages sent per RPC.
///
/// Notes: Should be 1 for all non-streaming RPCs. **Streaming**: This metric is required for server and client streaming RPCs
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{count}` | `Development` |
pub const rpc_client_responses_per_rpc = types.Metric{
    .name = "rpc.client.responses_per_rpc",
    .brief = "Measures the number of messages sent per RPC.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{count}",
    .value_type = .double,
};

/// Measures the duration of inbound RPC.
///
/// Notes: While streaming RPCs may record this metric as start-of-batch to end-of-batch, it's hard to interpret in practice. **Streaming**: N/A.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `ms` | `Development` |
pub const rpc_server_duration = types.Metric{
    .name = "rpc.server.duration",
    .brief = "Measures the duration of inbound RPC.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "ms",
    .value_type = .double,
};

/// Measures the size of RPC request messages (uncompressed).
///
/// Notes: **Streaming**: Recorded per message in a streaming batch
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
pub const rpc_server_request_size = types.Metric{
    .name = "rpc.server.request.size",
    .brief = "Measures the size of RPC request messages (uncompressed).",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Measures the number of messages received per RPC.
///
/// Notes: Should be 1 for all non-streaming RPCs. **Streaming** : This metric is required for server and client streaming RPCs
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{count}` | `Development` |
pub const rpc_server_requests_per_rpc = types.Metric{
    .name = "rpc.server.requests_per_rpc",
    .brief = "Measures the number of messages received per RPC.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{count}",
    .value_type = .double,
};

/// Measures the size of RPC response messages (uncompressed).
///
/// Notes: **Streaming**: Recorded per response in a streaming batch
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `By` | `Development` |
pub const rpc_server_response_size = types.Metric{
    .name = "rpc.server.response.size",
    .brief = "Measures the size of RPC response messages (uncompressed).",
    .stability = .development,
    .instrument = .histogram,
    .unit = "By",
    .value_type = .double,
};

/// Measures the number of messages sent per RPC.
///
/// Notes: Should be 1 for all non-streaming RPCs. **Streaming**: This metric is required for server and client streaming RPCs
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `{count}` | `Development` |
pub const rpc_server_responses_per_rpc = types.Metric{
    .name = "rpc.server.responses_per_rpc",
    .brief = "Measures the number of messages sent per RPC.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "{count}",
    .value_type = .double,
};

/// Number of connections that are currently active on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Http.Connections`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `signalr.connection.status` | `Recommended` |
/// | `signalr.transport` | `Recommended` |
pub const signalr_server_active_connections = types.Metric{
    .name = "signalr.server.active_connections",
    .brief = "Number of connections that are currently active on the server.",
    .stability = .stable,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// The duration of connections on the server.
///
/// Notes: Meter name: `Microsoft.AspNetCore.Http.Connections`; Added in: ASP.NET Core 8.0
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Stable` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `signalr.connection.status` | `Recommended` |
/// | `signalr.transport` | `Recommended` |
pub const signalr_server_connection_duration = types.Metric{
    .name = "signalr.server.connection.duration",
    .brief = "The duration of connections on the server.",
    .stability = .stable,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Operating frequency of the logical CPU in Hertz.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `Hz` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.logical_number` | `Recommended` |
pub const system_cpu_frequency = types.Metric{
    .name = "system.cpu.frequency",
    .brief = "Operating frequency of the logical CPU in Hertz.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "Hz",
    .value_type = .double,
};

/// Reports the number of logical (virtual) processor cores created by the operating system to manage multitasking
///
/// Notes: Calculated by multiplying the number of sockets by the number of cores per socket, and then by the number of threads per core
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const system_cpu_logical_count = types.Metric{
    .name = "system.cpu.logical.count",
    .brief = "Reports the number of logical (virtual) processor cores created by the operating system to manage multitasking",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Reports the number of actual physical processor cores on the hardware
///
/// Notes: Calculated by multiplying the number of sockets by the number of cores per socket
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{cpu}` | `Development` |
pub const system_cpu_physical_count = types.Metric{
    .name = "system.cpu.physical.count",
    .brief = "Reports the number of actual physical processor cores on the hardware",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{cpu}",
    .value_type = .double,
};

/// Seconds each logical CPU spent on each mode
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.logical_number` | `Recommended` |
/// | `cpu.mode` | `Recommended` |
pub const system_cpu_time = types.Metric{
    .name = "system.cpu.time",
    .brief = "Seconds each logical CPU spent on each mode",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// For each logical CPU, the utilization is calculated as the change in cumulative CPU time (cpu.time) over a measurement interval, divided by the elapsed time.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `cpu.logical_number` | `Recommended` |
/// | `cpu.mode` | `Recommended` |
pub const system_cpu_utilization = types.Metric{
    .name = "system.cpu.utilization",
    .brief = "For each logical CPU, the utilization is calculated as the change in cumulative CPU time (cpu.time) over a measurement interval, divided by the elapsed time.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `disk.io.direction` | `Recommended` |
/// | `system.device` | `Recommended` |
pub const system_disk_io = types.Metric{
    .name = "system.disk.io",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

/// Time disk spent activated
///
/// Notes: The real elapsed time ("wall clock") used in the I/O path (time from operations running in parallel are not counted). Measured as: - Linux: Field 13 from [procfs-diskstats](https://www.kernel.org/doc/Documentation/ABI/testing/procfs-diskstats) - Windows: The complement of  ["Disk\% Idle Time"](https://learn.microsoft.com/archive/blogs/askcore/windows-performance-monitor-disk-counters-explained#windows-performance-monitor-disk-counters-explained)  performance counter: `uptime * (100 - "Disk\% Idle Time") / 100`
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
pub const system_disk_io_time = types.Metric{
    .name = "system.disk.io_time",
    .brief = "Time disk spent activated",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

/// The total storage capacity of the disk
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
pub const system_disk_limit = types.Metric{
    .name = "system.disk.limit",
    .brief = "The total storage capacity of the disk",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{operation}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `disk.io.direction` | `Recommended` |
/// | `system.device` | `Recommended` |
pub const system_disk_merged = types.Metric{
    .name = "system.disk.merged",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "{operation}",
    .value_type = .double,
};

/// Sum of the time each operation took to complete
///
/// Notes: Because it is the sum of time each request took, parallel-issued requests each contribute to make the count grow. Measured as: - Linux: Fields 7 & 11 from [procfs-diskstats](https://www.kernel.org/doc/Documentation/ABI/testing/procfs-diskstats) - Windows: "Avg. Disk sec/Read" perf counter multiplied by "Disk Reads/sec" perf counter (similar for Writes)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `disk.io.direction` | `Recommended` |
/// | `system.device` | `Recommended` |
pub const system_disk_operation_time = types.Metric{
    .name = "system.disk.operation_time",
    .brief = "Sum of the time each operation took to complete",
    .stability = .development,
    .instrument = .counter,
    .unit = "s",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{operation}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `disk.io.direction` | `Recommended` |
/// | `system.device` | `Recommended` |
pub const system_disk_operations = types.Metric{
    .name = "system.disk.operations",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "{operation}",
    .value_type = .double,
};

/// The total storage capacity of the filesystem
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
/// | `system.filesystem.mode` | `Recommended` |
/// | `system.filesystem.mountpoint` | `Recommended` |
/// | `system.filesystem.type` | `Recommended` |
pub const system_filesystem_limit = types.Metric{
    .name = "system.filesystem.limit",
    .brief = "The total storage capacity of the filesystem",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Reports a filesystem's space usage across different states.
///
/// Notes: The sum of all `system.filesystem.usage` values over the different `system.filesystem.state` attributes SHOULD equal the total storage capacity of the filesystem, that is `system.filesystem.limit`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
/// | `system.filesystem.mode` | `Recommended` |
/// | `system.filesystem.mountpoint` | `Recommended` |
/// | `system.filesystem.state` | `Recommended` |
/// | `system.filesystem.type` | `Recommended` |
pub const system_filesystem_usage = types.Metric{
    .name = "system.filesystem.usage",
    .brief = "Reports a filesystem's space usage across different states.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
/// | `system.filesystem.mode` | `Recommended` |
/// | `system.filesystem.mountpoint` | `Recommended` |
/// | `system.filesystem.state` | `Recommended` |
/// | `system.filesystem.type` | `Recommended` |
pub const system_filesystem_utilization = types.Metric{
    .name = "system.filesystem.utilization",
    .brief = "",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// An estimate of how much memory is available for starting new applications, without causing swapping
///
/// Notes: This is an alternative to `system.memory.usage` metric with `state=free`. Linux starting from 3.14 exports "available" memory. It takes "free" memory as a baseline, and then factors in kernel-specific values. This is supposed to be more accurate than just "free" memory. For reference, see the calculations [here](https://superuser.com/a/980821). See also `MemAvailable` in [/proc/meminfo](https://man7.org/linux/man-pages/man5/proc.5.html).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const system_linux_memory_available = types.Metric{
    .name = "system.linux.memory.available",
    .brief = "An estimate of how much memory is available for starting new applications, without causing swapping",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Reports the memory used by the Linux kernel for managing caches of frequently used objects.
///
/// Notes: The sum over the `reclaimable` and `unreclaimable` state values in `linux.memory.slab.usage` SHOULD be equal to the total slab memory available on the system. Note that the total slab memory is not constant and may vary over time. See also the [Slab allocator](https://blogs.oracle.com/linux/post/understanding-linux-kernel-memory-statistics) and `Slab` in [/proc/meminfo](https://man7.org/linux/man-pages/man5/proc.5.html).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `linux.memory.slab.state` | `Recommended` |
pub const system_linux_memory_slab_usage = types.Metric{
    .name = "system.linux.memory.slab.usage",
    .brief = "Reports the memory used by the Linux kernel for managing caches of frequently used objects.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Total memory available in the system.
///
/// Notes: Its value SHOULD equal the sum of `system.memory.state` over all states.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const system_memory_limit = types.Metric{
    .name = "system.memory.limit",
    .brief = "Total memory available in the system.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Shared memory used (mostly by tmpfs).
///
/// Notes: Equivalent of `shared` from [`free` command](https://man7.org/linux/man-pages/man1/free.1.html) or `Shmem` from [`/proc/meminfo`](https://man7.org/linux/man-pages/man5/proc.5.html)"
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
pub const system_memory_shared = types.Metric{
    .name = "system.memory.shared",
    .brief = "Shared memory used (mostly by tmpfs).",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Reports memory in use by state.
///
/// Notes: The sum over all `system.memory.state` values SHOULD equal the total memory available on the system, that is `system.memory.limit`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.memory.state` | `Recommended` |
pub const system_memory_usage = types.Metric{
    .name = "system.memory.usage",
    .brief = "Reports memory in use by state.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.memory.state` | `Recommended` |
pub const system_memory_utilization = types.Metric{
    .name = "system.memory.utilization",
    .brief = "",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.connection.state` | `Recommended` |
/// | `network.interface.name` | `Recommended` |
/// | `network.transport` | `Recommended` |
pub const system_network_connection_count = types.Metric{
    .name = "system.network.connection.count",
    .brief = "",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
};

/// Deprecated, use `system.network.connection.count` instead
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{connection}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.connection.state` | `Recommended` |
/// | `network.interface.name` | `Recommended` |
/// | `network.transport` | `Recommended` |
///
/// Note: This metric is deprecated. Replaced by `system.network.connection.count`.
pub const system_network_connections = types.Metric{
    .name = "system.network.connections",
    .brief = "Deprecated, use `system.network.connection.count` instead",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{connection}",
    .value_type = .double,
    .deprecated_reason = "Replaced by `system.network.connection.count`.",
};

/// Count of packets that are dropped or discarded even though there was no error
///
/// Notes: Measured as: - Linux: the `drop` column in `/proc/dev/net` ([source](https://web.archive.org/web/20180321091318/http://www.onlamp.com/pub/a/linux/2000/11/16/LinuxAdmin.html)) - Windows: [`InDiscards`/`OutDiscards`](https://docs.microsoft.com/windows/win32/api/netioapi/ns-netioapi-mib_if_row2)  from [`GetIfEntry2`](https://docs.microsoft.com/windows/win32/api/netioapi/nf-netioapi-getifentry2)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{packet}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const system_network_dropped = types.Metric{
    .name = "system.network.dropped",
    .brief = "Count of packets that are dropped or discarded even though there was no error",
    .stability = .development,
    .instrument = .counter,
    .unit = "{packet}",
    .value_type = .double,
};

/// Count of network errors detected
///
/// Notes: Measured as: - Linux: the `errs` column in `/proc/dev/net` ([source](https://web.archive.org/web/20180321091318/http://www.onlamp.com/pub/a/linux/2000/11/16/LinuxAdmin.html)). - Windows: [`InErrors`/`OutErrors`](https://docs.microsoft.com/windows/win32/api/netioapi/ns-netioapi-mib_if_row2)  from [`GetIfEntry2`](https://docs.microsoft.com/windows/win32/api/netioapi/nf-netioapi-getifentry2).
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{error}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const system_network_errors = types.Metric{
    .name = "system.network.errors",
    .brief = "Count of network errors detected",
    .stability = .development,
    .instrument = .counter,
    .unit = "{error}",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.interface.name` | `Recommended` |
/// | `network.io.direction` | `Recommended` |
pub const system_network_io = types.Metric{
    .name = "system.network.io",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "By",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{packet}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `network.io.direction` | `Recommended` |
/// | `system.device` | `Recommended` |
pub const system_network_packets = types.Metric{
    .name = "system.network.packets",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "{packet}",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{fault}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.paging.type` | `Recommended` |
pub const system_paging_faults = types.Metric{
    .name = "system.paging.faults",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "{fault}",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{operation}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.paging.direction` | `Recommended` |
/// | `system.paging.type` | `Recommended` |
pub const system_paging_operations = types.Metric{
    .name = "system.paging.operations",
    .brief = "",
    .stability = .development,
    .instrument = .counter,
    .unit = "{operation}",
    .value_type = .double,
};

/// Unix swap or windows pagefile usage
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
/// | `system.paging.state` | `Recommended` |
pub const system_paging_usage = types.Metric{
    .name = "system.paging.usage",
    .brief = "Unix swap or windows pagefile usage",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

///
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `1` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.device` | `Recommended` |
/// | `system.paging.state` | `Recommended` |
pub const system_paging_utilization = types.Metric{
    .name = "system.paging.utilization",
    .brief = "",
    .stability = .development,
    .instrument = .gauge,
    .unit = "1",
    .value_type = .double,
};

/// Total number of processes in each state
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{process}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `system.process.status` | `Recommended` |
pub const system_process_count = types.Metric{
    .name = "system.process.count",
    .brief = "Total number of processes in each state",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{process}",
    .value_type = .double,
};

/// Total number of processes created over uptime of the host
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `counter` | `{process}` | `Development` |
pub const system_process_created = types.Metric{
    .name = "system.process.created",
    .brief = "Total number of processes created over uptime of the host",
    .stability = .development,
    .instrument = .counter,
    .unit = "{process}",
    .value_type = .double,
};

/// The time the system has been running
///
/// Notes: Instrumentations SHOULD use a gauge with type `double` and measure uptime in seconds as a floating point number with the highest precision available. The actual accuracy would depend on the instrumentation and operating system.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
pub const system_uptime = types.Metric{
    .name = "system.uptime",
    .brief = "The time the system has been running",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// Garbage collection duration.
///
/// Notes: The values can be retrieved from [`perf_hooks.PerformanceObserver(...).observe({ entryTypes: ['gc'] })`](https://nodejs.org/api/perf_hooks.html#performanceobserverobserveoptions)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `histogram` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `v8js.gc.type` | `Required` |
pub const v8js_gc_duration = types.Metric{
    .name = "v8js.gc.duration",
    .brief = "Garbage collection duration.",
    .stability = .development,
    .instrument = .histogram,
    .unit = "s",
    .value_type = .double,
};

/// Heap space available size.
///
/// Notes: Value can be retrieved from value `space_available_size` of [`v8.getHeapSpaceStatistics()`](https://nodejs.org/api/v8.html#v8getheapspacestatistics)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `v8js.heap.space.name` | `Required` |
pub const v8js_heap_space_available_size = types.Metric{
    .name = "v8js.heap.space.available_size",
    .brief = "Heap space available size.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Committed size of a heap space.
///
/// Notes: Value can be retrieved from value `physical_space_size` of [`v8.getHeapSpaceStatistics()`](https://nodejs.org/api/v8.html#v8getheapspacestatistics)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `v8js.heap.space.name` | `Required` |
pub const v8js_heap_space_physical_size = types.Metric{
    .name = "v8js.heap.space.physical_size",
    .brief = "Committed size of a heap space.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Total heap memory size pre-allocated.
///
/// Notes: The value can be retrieved from value `space_size` of [`v8.getHeapSpaceStatistics()`](https://nodejs.org/api/v8.html#v8getheapspacestatistics)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `v8js.heap.space.name` | `Required` |
pub const v8js_memory_heap_limit = types.Metric{
    .name = "v8js.memory.heap.limit",
    .brief = "Total heap memory size pre-allocated.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// Heap Memory size allocated.
///
/// Notes: The value can be retrieved from value `space_used_size` of [`v8.getHeapSpaceStatistics()`](https://nodejs.org/api/v8.html#v8getheapspacestatistics)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `By` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `v8js.heap.space.name` | `Required` |
pub const v8js_memory_heap_used = types.Metric{
    .name = "v8js.memory.heap.used",
    .brief = "Heap Memory size allocated.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "By",
    .value_type = .double,
};

/// The number of changes (pull requests/merge requests/changelists) in a repository, categorized by their state (e.g. open or merged)
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{change}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.change.state` | `Required` |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_change_count = types.Metric{
    .name = "vcs.change.count",
    .brief = "The number of changes (pull requests/merge requests/changelists) in a repository, categorized by their state (e.g. open or merged)",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{change}",
    .value_type = .double,
};

/// The time duration a change (pull request/merge request/changelist) has been in a given state.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.change.state` | `Required` |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.head.name` | `Required` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_change_duration = types.Metric{
    .name = "vcs.change.duration",
    .brief = "The time duration a change (pull request/merge request/changelist) has been in a given state.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// The amount of time since its creation it took a change (pull request/merge request/changelist) to get the first approval.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.base.name` | `Recommended` |
/// | `vcs.ref.base.revision` | `Opt_in` |
/// | `vcs.ref.head.name` | `Required` |
/// | `vcs.ref.head.revision` | `Opt_in` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_change_time_to_approval = types.Metric{
    .name = "vcs.change.time_to_approval",
    .brief = "The amount of time since its creation it took a change (pull request/merge request/changelist) to get the first approval.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// The amount of time since its creation it took a change (pull request/merge request/changelist) to get merged into the target(base) ref.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.base.name` | `Recommended` |
/// | `vcs.ref.base.revision` | `Opt_in` |
/// | `vcs.ref.head.name` | `Required` |
/// | `vcs.ref.head.revision` | `Opt_in` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_change_time_to_merge = types.Metric{
    .name = "vcs.change.time_to_merge",
    .brief = "The amount of time since its creation it took a change (pull request/merge request/changelist) to get merged into the target(base) ref.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// The number of unique contributors to a repository
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{contributor}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_contributor_count = types.Metric{
    .name = "vcs.contributor.count",
    .brief = "The number of unique contributors to a repository",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{contributor}",
    .value_type = .double,
};

/// The number of refs of type branch or tag in a repository.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{ref}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.type` | `Required` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_ref_count = types.Metric{
    .name = "vcs.ref.count",
    .brief = "The number of refs of type branch or tag in a repository.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{ref}",
    .value_type = .double,
};

/// The number of lines added/removed in a ref (branch) relative to the ref from the `vcs.ref.base.name` attribute.
///
/// Notes: This metric should be reported for each `vcs.line_change.type` value. For example if a ref added 3 lines and removed 2 lines, instrumentation SHOULD report two measurements: 3 and 2 (both positive numbers). If number of lines added/removed should be calculated from the start of time, then `vcs.ref.base.name` SHOULD be set to an empty string.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{line}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.change.id` | `Conditionally_required`: if a change is associate with the ref. |
/// | `vcs.line_change.type` | `Required` |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.base.name` | `Required` |
/// | `vcs.ref.base.type` | `Required` |
/// | `vcs.ref.head.name` | `Required` |
/// | `vcs.ref.head.type` | `Required` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_ref_lines_delta = types.Metric{
    .name = "vcs.ref.lines_delta",
    .brief = "The number of lines added/removed in a ref (branch) relative to the ref from the `vcs.ref.base.name` attribute.",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{line}",
    .value_type = .double,
};

/// The number of revisions (commits) a ref (branch) is ahead/behind the branch from the `vcs.ref.base.name` attribute
///
/// Notes: This metric should be reported for each `vcs.revision_delta.direction` value. For example if branch `a` is 3 commits behind and 2 commits ahead of `trunk`, instrumentation SHOULD report two measurements: 3 and 2 (both positive numbers) and `vcs.ref.base.name` is set to `trunk`.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `{revision}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.change.id` | `Conditionally_required`: if a change is associate with the ref. |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.base.name` | `Required` |
/// | `vcs.ref.base.type` | `Required` |
/// | `vcs.ref.head.name` | `Required` |
/// | `vcs.ref.head.type` | `Required` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
/// | `vcs.revision_delta.direction` | `Required` |
pub const vcs_ref_revisions_delta = types.Metric{
    .name = "vcs.ref.revisions_delta",
    .brief = "The number of revisions (commits) a ref (branch) is ahead/behind the branch from the `vcs.ref.base.name` attribute",
    .stability = .development,
    .instrument = .gauge,
    .unit = "{revision}",
    .value_type = .double,
};

/// Time a ref (branch) created from the default branch (trunk) has existed. The `ref.type` attribute will always be `branch`
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `gauge` | `s` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
/// | `vcs.ref.head.name` | `Required` |
/// | `vcs.ref.head.type` | `Required` |
/// | `vcs.repository.name` | `Recommended` |
/// | `vcs.repository.url.full` | `Required` |
pub const vcs_ref_time = types.Metric{
    .name = "vcs.ref.time",
    .brief = "Time a ref (branch) created from the default branch (trunk) has existed. The `ref.type` attribute will always be `branch`",
    .stability = .development,
    .instrument = .gauge,
    .unit = "s",
    .value_type = .double,
};

/// The number of repositories in an organization.
///
/// ## Metadata
/// | Instrument | Unit | Status |
/// |:-|:-|:-|
/// | `updowncounter` | `{repository}` | `Development` |
///
/// ## Attributes
/// | Name | Requirement |
/// |:-|:- |
/// | `vcs.owner.name` | `Recommended` |
/// | `vcs.provider.name` | `Opt_in` |
pub const vcs_repository_count = types.Metric{
    .name = "vcs.repository.count",
    .brief = "The number of repositories in an organization.",
    .stability = .development,
    .instrument = .updowncounter,
    .unit = "{repository}",
    .value_type = .double,
};

test "semantic metrics" {
    @import("std").testing.refAllDecls(@This());
}
