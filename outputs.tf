output "monitors_id" {
  description = "Map of id values across all monitors, keyed the same as var.monitors except keys with no id are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitors_assets" {
  description = "Map of assets values across all monitors, keyed the same as var.monitors except keys with no assets are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.assets if v.assets != null && length(v.assets) > 0 }
}
output "monitors_draft_status" {
  description = "Map of draft_status values across all monitors, keyed the same as var.monitors except keys with no draft_status are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.draft_status if v.draft_status != null && length(v.draft_status) > 0 }
}
output "monitors_enable_logs_sample" {
  description = "Map of enable_logs_sample values across all monitors, keyed the same as var.monitors except keys with no enable_logs_sample are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.enable_logs_sample if v.enable_logs_sample != null }
}
output "monitors_enable_samples" {
  description = "Map of enable_samples values across all monitors, keyed the same as var.monitors except keys with no enable_samples are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.enable_samples if v.enable_samples != null }
}
output "monitors_escalation_message" {
  description = "Map of escalation_message values across all monitors, keyed the same as var.monitors except keys with no escalation_message are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.escalation_message if v.escalation_message != null && length(v.escalation_message) > 0 }
}
output "monitors_evaluation_delay" {
  description = "Map of evaluation_delay values across all monitors, keyed the same as var.monitors except keys with no evaluation_delay are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.evaluation_delay if v.evaluation_delay != null }
}
output "monitors_force_delete" {
  description = "Map of force_delete values across all monitors, keyed the same as var.monitors except keys with no force_delete are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.force_delete if v.force_delete != null }
}
output "monitors_group_retention_duration" {
  description = "Map of group_retention_duration values across all monitors, keyed the same as var.monitors except keys with no group_retention_duration are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.group_retention_duration if v.group_retention_duration != null && length(v.group_retention_duration) > 0 }
}
output "monitors_groupby_simple_monitor" {
  description = "Map of groupby_simple_monitor values across all monitors, keyed the same as var.monitors except keys with no groupby_simple_monitor are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.groupby_simple_monitor if v.groupby_simple_monitor != null }
}
output "monitors_ignore_tag_keys" {
  description = "Map of ignore_tag_keys values across all monitors, keyed the same as var.monitors except keys with no ignore_tag_keys are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.ignore_tag_keys if v.ignore_tag_keys != null && length(v.ignore_tag_keys) > 0 }
}
output "monitors_include_tags" {
  description = "Map of include_tags values across all monitors, keyed the same as var.monitors except keys with no include_tags are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.include_tags if v.include_tags != null }
}
output "monitors_message" {
  description = "Map of message values across all monitors, keyed the same as var.monitors except keys with no message are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.message if v.message != null && length(v.message) > 0 }
}
output "monitors_monitor_threshold_windows" {
  description = "Map of monitor_threshold_windows values across all monitors, keyed the same as var.monitors except keys with no monitor_threshold_windows are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => one(v.monitor_threshold_windows) if v.monitor_threshold_windows != null && length(v.monitor_threshold_windows) > 0 }
}
output "monitors_monitor_thresholds" {
  description = "Map of monitor_thresholds values across all monitors, keyed the same as var.monitors except keys with no monitor_thresholds are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => one(v.monitor_thresholds) if v.monitor_thresholds != null && length(v.monitor_thresholds) > 0 }
}
output "monitors_name" {
  description = "Map of name values across all monitors, keyed the same as var.monitors except keys with no name are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitors_new_group_delay" {
  description = "Map of new_group_delay values across all monitors, keyed the same as var.monitors except keys with no new_group_delay are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.new_group_delay if v.new_group_delay != null }
}
output "monitors_new_host_delay" {
  description = "Map of new_host_delay values across all monitors, keyed the same as var.monitors except keys with no new_host_delay are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.new_host_delay if v.new_host_delay != null }
}
output "monitors_no_data_timeframe" {
  description = "Map of no_data_timeframe values across all monitors, keyed the same as var.monitors except keys with no no_data_timeframe are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.no_data_timeframe if v.no_data_timeframe != null }
}
output "monitors_notification_preset_name" {
  description = "Map of notification_preset_name values across all monitors, keyed the same as var.monitors except keys with no notification_preset_name are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.notification_preset_name if v.notification_preset_name != null && length(v.notification_preset_name) > 0 }
}
output "monitors_notify_audit" {
  description = "Map of notify_audit values across all monitors, keyed the same as var.monitors except keys with no notify_audit are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.notify_audit if v.notify_audit != null }
}
output "monitors_notify_by" {
  description = "Map of notify_by values across all monitors, keyed the same as var.monitors except keys with no notify_by are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.notify_by if v.notify_by != null && length(v.notify_by) > 0 }
}
output "monitors_notify_no_data" {
  description = "Map of notify_no_data values across all monitors, keyed the same as var.monitors except keys with no notify_no_data are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.notify_no_data if v.notify_no_data != null }
}
output "monitors_on_missing_data" {
  description = "Map of on_missing_data values across all monitors, keyed the same as var.monitors except keys with no on_missing_data are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.on_missing_data if v.on_missing_data != null && length(v.on_missing_data) > 0 }
}
output "monitors_priority" {
  description = "Map of priority values across all monitors, keyed the same as var.monitors except keys with no priority are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.priority if v.priority != null && length(v.priority) > 0 }
}
output "monitors_query" {
  description = "Map of query values across all monitors, keyed the same as var.monitors except keys with no query are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.query if v.query != null && length(v.query) > 0 }
}
output "monitors_renotify_interval" {
  description = "Map of renotify_interval values across all monitors, keyed the same as var.monitors except keys with no renotify_interval are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.renotify_interval if v.renotify_interval != null }
}
output "monitors_renotify_occurrences" {
  description = "Map of renotify_occurrences values across all monitors, keyed the same as var.monitors except keys with no renotify_occurrences are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.renotify_occurrences if v.renotify_occurrences != null }
}
output "monitors_renotify_statuses" {
  description = "Map of renotify_statuses values across all monitors, keyed the same as var.monitors except keys with no renotify_statuses are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.renotify_statuses if v.renotify_statuses != null && length(v.renotify_statuses) > 0 }
}
output "monitors_require_full_window" {
  description = "Map of require_full_window values across all monitors, keyed the same as var.monitors except keys with no require_full_window are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.require_full_window if v.require_full_window != null }
}
output "monitors_restricted_roles" {
  description = "Map of restricted_roles values across all monitors, keyed the same as var.monitors except keys with no restricted_roles are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.restricted_roles if v.restricted_roles != null && length(v.restricted_roles) > 0 }
}
output "monitors_scheduling_options" {
  description = "Map of scheduling_options values across all monitors, keyed the same as var.monitors except keys with no scheduling_options are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => one(v.scheduling_options) if v.scheduling_options != null && length(v.scheduling_options) > 0 }
}
output "monitors_tags" {
  description = "Map of tags values across all monitors, keyed the same as var.monitors except keys with no tags are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "monitors_timeout_h" {
  description = "Map of timeout_h values across all monitors, keyed the same as var.monitors except keys with no timeout_h are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.timeout_h if v.timeout_h != null }
}
output "monitors_type" {
  description = "Map of type values across all monitors, keyed the same as var.monitors except keys with no type are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.type if v.type != null && length(v.type) > 0 }
}
output "monitors_validate" {
  description = "Map of validate values across all monitors, keyed the same as var.monitors except keys with no validate are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => v.validate if v.validate != null }
}
output "monitors_variables" {
  description = "Map of variables values across all monitors, keyed the same as var.monitors except keys with no variables are omitted"
  value       = { for k, v in datadog_monitor.monitors : k => one(v.variables) if v.variables != null && length(v.variables) > 0 }
}

