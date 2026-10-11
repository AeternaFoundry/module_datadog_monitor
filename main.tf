resource "datadog_monitor" "monitors" {
  for_each = var.monitors

  message                  = each.value.message
  name                     = each.value.name
  query                    = each.value.query
  type                     = each.value.type
  draft_status             = each.value.draft_status
  enable_logs_sample       = each.value.enable_logs_sample
  enable_samples           = each.value.enable_samples
  escalation_message       = each.value.escalation_message
  evaluation_delay         = each.value.evaluation_delay
  force_delete             = each.value.force_delete
  group_retention_duration = each.value.group_retention_duration
  groupby_simple_monitor   = each.value.groupby_simple_monitor
  ignore_tag_keys          = each.value.ignore_tag_keys
  include_tags             = each.value.include_tags
  new_group_delay          = each.value.new_group_delay
  new_host_delay           = each.value.new_host_delay
  no_data_timeframe        = each.value.no_data_timeframe
  notification_preset_name = each.value.notification_preset_name
  notify_audit             = each.value.notify_audit
  notify_by                = each.value.notify_by
  notify_no_data           = each.value.notify_no_data
  on_missing_data          = each.value.on_missing_data
  priority                 = each.value.priority
  renotify_interval        = each.value.renotify_interval
  renotify_occurrences     = each.value.renotify_occurrences
  renotify_statuses        = each.value.renotify_statuses
  require_full_window      = each.value.require_full_window
  restricted_roles         = each.value.restricted_roles
  tags                     = each.value.tags
  timeout_h                = each.value.timeout_h
  validate                 = each.value.validate

  dynamic "assets" {
    for_each = each.value.assets != null ? each.value.assets : []
    content {
      category      = assets.value.category
      name          = assets.value.name
      resource_key  = assets.value.resource_key
      resource_type = assets.value.resource_type
      url           = assets.value.url
    }
  }

  dynamic "monitor_threshold_windows" {
    for_each = each.value.monitor_threshold_windows != null ? [each.value.monitor_threshold_windows] : []
    content {
      recovery_window = monitor_threshold_windows.value.recovery_window
      trigger_window  = monitor_threshold_windows.value.trigger_window
    }
  }

  dynamic "monitor_thresholds" {
    for_each = each.value.monitor_thresholds != null ? [each.value.monitor_thresholds] : []
    content {
      critical                = monitor_thresholds.value.critical
      critical_query          = monitor_thresholds.value.critical_query
      critical_recovery       = monitor_thresholds.value.critical_recovery
      critical_recovery_query = monitor_thresholds.value.critical_recovery_query
      ok                      = monitor_thresholds.value.ok
      unknown                 = monitor_thresholds.value.unknown
      warning                 = monitor_thresholds.value.warning
      warning_recovery        = monitor_thresholds.value.warning_recovery
    }
  }

  dynamic "scheduling_options" {
    for_each = each.value.scheduling_options != null ? [each.value.scheduling_options] : []
    content {
      dynamic "custom_schedule" {
        for_each = scheduling_options.value.custom_schedule != null ? [scheduling_options.value.custom_schedule] : []
        content {
          recurrence {
            rrule    = custom_schedule.value.recurrence.rrule
            start    = custom_schedule.value.recurrence.start
            timezone = custom_schedule.value.recurrence.timezone
          }
        }
      }
      dynamic "evaluation_window" {
        for_each = scheduling_options.value.evaluation_window != null ? [scheduling_options.value.evaluation_window] : []
        content {
          day_starts   = evaluation_window.value.day_starts
          hour_starts  = evaluation_window.value.hour_starts
          month_starts = evaluation_window.value.month_starts
          timezone     = evaluation_window.value.timezone
        }
      }
    }
  }

  dynamic "variables" {
    for_each = each.value.variables != null ? [each.value.variables] : []
    content {
      dynamic "aggregate_augmented_query" {
        for_each = variables.value.aggregate_augmented_query != null ? variables.value.aggregate_augmented_query : []
        content {
          dynamic "augment_event_query" {
            for_each = aggregate_augmented_query.value.augment_event_query != null ? [aggregate_augmented_query.value.augment_event_query] : []
            content {
              dynamic "compute" {
                for_each = augment_event_query.value.compute
                content {
                  aggregation = compute.value.aggregation
                  interval    = compute.value.interval
                  metric      = compute.value.metric
                  name        = compute.value.name
                }
              }
              data_source = augment_event_query.value.data_source
              dynamic "group_by" {
                for_each = augment_event_query.value.group_by != null ? augment_event_query.value.group_by : []
                content {
                  facet = group_by.value.facet
                  limit = group_by.value.limit
                  dynamic "sort" {
                    for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                    content {
                      aggregation = sort.value.aggregation
                      metric      = sort.value.metric
                      order       = sort.value.order
                    }
                  }
                  source = group_by.value.source
                }
              }
              indexes = augment_event_query.value.indexes
              name    = augment_event_query.value.name
              search {
                query = augment_event_query.value.search.query
              }
            }
          }
          dynamic "augment_reference_table" {
            for_each = aggregate_augmented_query.value.augment_reference_table != null ? [aggregate_augmented_query.value.augment_reference_table] : []
            content {
              dynamic "columns" {
                for_each = augment_reference_table.value.columns != null ? augment_reference_table.value.columns : []
                content {
                  alias = columns.value.alias
                  name  = columns.value.name
                }
              }
              data_source  = augment_reference_table.value.data_source
              name         = augment_reference_table.value.name
              query_filter = augment_reference_table.value.query_filter
              table_name   = augment_reference_table.value.table_name
            }
          }
          dynamic "base_event_query" {
            for_each = aggregate_augmented_query.value.base_event_query != null ? [aggregate_augmented_query.value.base_event_query] : []
            content {
              dynamic "compute" {
                for_each = base_event_query.value.compute
                content {
                  aggregation = compute.value.aggregation
                  interval    = compute.value.interval
                  metric      = compute.value.metric
                  name        = compute.value.name
                }
              }
              data_source = base_event_query.value.data_source
              dynamic "group_by" {
                for_each = base_event_query.value.group_by != null ? base_event_query.value.group_by : []
                content {
                  facet = group_by.value.facet
                  limit = group_by.value.limit
                  dynamic "sort" {
                    for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                    content {
                      aggregation = sort.value.aggregation
                      metric      = sort.value.metric
                      order       = sort.value.order
                    }
                  }
                  source = group_by.value.source
                }
              }
              indexes = base_event_query.value.indexes
              name    = base_event_query.value.name
              search {
                query = base_event_query.value.search.query
              }
            }
          }
          dynamic "base_metrics_query" {
            for_each = aggregate_augmented_query.value.base_metrics_query != null ? [aggregate_augmented_query.value.base_metrics_query] : []
            content {
              aggregator  = base_metrics_query.value.aggregator
              data_source = base_metrics_query.value.data_source
              name        = base_metrics_query.value.name
              query       = base_metrics_query.value.query
            }
          }
          dynamic "compute" {
            for_each = aggregate_augmented_query.value.compute
            content {
              aggregation = compute.value.aggregation
              interval    = compute.value.interval
              metric      = compute.value.metric
              name        = compute.value.name
            }
          }
          data_source = aggregate_augmented_query.value.data_source
          dynamic "group_by" {
            for_each = aggregate_augmented_query.value.group_by
            content {
              facet = group_by.value.facet
              limit = group_by.value.limit
              dynamic "sort" {
                for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                content {
                  aggregation = sort.value.aggregation
                  metric      = sort.value.metric
                  order       = sort.value.order
                }
              }
              source = group_by.value.source
            }
          }
          join_condition {
            augment_attribute = aggregate_augmented_query.value.join_condition.augment_attribute
            base_attribute    = aggregate_augmented_query.value.join_condition.base_attribute
            join_type         = aggregate_augmented_query.value.join_condition.join_type
          }
          name = aggregate_augmented_query.value.name
        }
      }
      dynamic "aggregate_filtered_query" {
        for_each = variables.value.aggregate_filtered_query != null ? variables.value.aggregate_filtered_query : []
        content {
          dynamic "base_event_query" {
            for_each = aggregate_filtered_query.value.base_event_query != null ? [aggregate_filtered_query.value.base_event_query] : []
            content {
              dynamic "compute" {
                for_each = base_event_query.value.compute
                content {
                  aggregation = compute.value.aggregation
                  interval    = compute.value.interval
                  metric      = compute.value.metric
                  name        = compute.value.name
                }
              }
              data_source = base_event_query.value.data_source
              dynamic "group_by" {
                for_each = base_event_query.value.group_by != null ? base_event_query.value.group_by : []
                content {
                  facet = group_by.value.facet
                  limit = group_by.value.limit
                  dynamic "sort" {
                    for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                    content {
                      aggregation = sort.value.aggregation
                      metric      = sort.value.metric
                      order       = sort.value.order
                    }
                  }
                  source = group_by.value.source
                }
              }
              indexes = base_event_query.value.indexes
              name    = base_event_query.value.name
              search {
                query = base_event_query.value.search.query
              }
            }
          }
          dynamic "base_metrics_query" {
            for_each = aggregate_filtered_query.value.base_metrics_query != null ? [aggregate_filtered_query.value.base_metrics_query] : []
            content {
              aggregator  = base_metrics_query.value.aggregator
              data_source = base_metrics_query.value.data_source
              name        = base_metrics_query.value.name
              query       = base_metrics_query.value.query
            }
          }
          dynamic "compute" {
            for_each = aggregate_filtered_query.value.compute != null ? aggregate_filtered_query.value.compute : []
            content {
              aggregation = compute.value.aggregation
              interval    = compute.value.interval
              metric      = compute.value.metric
              name        = compute.value.name
            }
          }
          data_source = aggregate_filtered_query.value.data_source
          dynamic "filter_event_query" {
            for_each = aggregate_filtered_query.value.filter_event_query != null ? [aggregate_filtered_query.value.filter_event_query] : []
            content {
              dynamic "compute" {
                for_each = filter_event_query.value.compute
                content {
                  aggregation = compute.value.aggregation
                  interval    = compute.value.interval
                  metric      = compute.value.metric
                  name        = compute.value.name
                }
              }
              data_source = filter_event_query.value.data_source
              dynamic "group_by" {
                for_each = filter_event_query.value.group_by != null ? filter_event_query.value.group_by : []
                content {
                  facet = group_by.value.facet
                  limit = group_by.value.limit
                  dynamic "sort" {
                    for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                    content {
                      aggregation = sort.value.aggregation
                      metric      = sort.value.metric
                      order       = sort.value.order
                    }
                  }
                  source = group_by.value.source
                }
              }
              indexes = filter_event_query.value.indexes
              name    = filter_event_query.value.name
              search {
                query = filter_event_query.value.search.query
              }
            }
          }
          dynamic "filter_reference_table" {
            for_each = aggregate_filtered_query.value.filter_reference_table != null ? [aggregate_filtered_query.value.filter_reference_table] : []
            content {
              dynamic "columns" {
                for_each = filter_reference_table.value.columns != null ? filter_reference_table.value.columns : []
                content {
                  alias = columns.value.alias
                  name  = columns.value.name
                }
              }
              data_source  = filter_reference_table.value.data_source
              name         = filter_reference_table.value.name
              query_filter = filter_reference_table.value.query_filter
              table_name   = filter_reference_table.value.table_name
            }
          }
          dynamic "filters" {
            for_each = aggregate_filtered_query.value.filters
            content {
              base_attribute   = filters.value.base_attribute
              exclude          = filters.value.exclude
              filter_attribute = filters.value.filter_attribute
            }
          }
          dynamic "group_by" {
            for_each = aggregate_filtered_query.value.group_by != null ? aggregate_filtered_query.value.group_by : []
            content {
              facet = group_by.value.facet
              limit = group_by.value.limit
              dynamic "sort" {
                for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                content {
                  aggregation = sort.value.aggregation
                  metric      = sort.value.metric
                  order       = sort.value.order
                }
              }
              source = group_by.value.source
            }
          }
          name = aggregate_filtered_query.value.name
        }
      }
      dynamic "cloud_cost_query" {
        for_each = variables.value.cloud_cost_query != null ? variables.value.cloud_cost_query : []
        content {
          aggregator  = cloud_cost_query.value.aggregator
          data_source = cloud_cost_query.value.data_source
          name        = cloud_cost_query.value.name
          query       = cloud_cost_query.value.query
        }
      }
      dynamic "data_jobs_query" {
        for_each = variables.value.data_jobs_query != null ? variables.value.data_jobs_query : []
        content {
          job_type      = data_jobs_query.value.job_type
          jobs_query    = data_jobs_query.value.jobs_query
          name          = data_jobs_query.value.name
          query_dialect = data_jobs_query.value.query_dialect
        }
      }
      dynamic "data_quality_query" {
        for_each = variables.value.data_quality_query != null ? variables.value.data_quality_query : []
        content {
          data_source = data_quality_query.value.data_source
          filter      = data_quality_query.value.filter
          group_by    = data_quality_query.value.group_by
          measure     = data_quality_query.value.measure
          dynamic "monitor_options" {
            for_each = data_quality_query.value.monitor_options != null ? [data_quality_query.value.monitor_options] : []
            content {
              crontab_override = monitor_options.value.crontab_override
              custom_sql       = monitor_options.value.custom_sql
              custom_where     = monitor_options.value.custom_where
              group_by_columns = monitor_options.value.group_by_columns
              dynamic "model_configuration" {
                for_each = monitor_options.value.model_configuration != null ? [monitor_options.value.model_configuration] : []
                content {
                  auto_resolve_days         = model_configuration.value.auto_resolve_days
                  enable_flatline_detection = model_configuration.value.enable_flatline_detection
                  function                  = model_configuration.value.function
                  min_lower_bound_size      = model_configuration.value.min_lower_bound_size
                  min_upper_bound_size      = model_configuration.value.min_upper_bound_size
                  model_bounds_override     = model_configuration.value.model_bounds_override
                }
              }
              model_type_override = monitor_options.value.model_type_override
              sensitivity         = monitor_options.value.sensitivity
              dynamic "source_to_target_config" {
                for_each = monitor_options.value.source_to_target_config != null ? [monitor_options.value.source_to_target_config] : []
                content {
                  diff_type   = source_to_target_config.value.diff_type
                  entity_type = source_to_target_config.value.entity_type
                  source {
                    custom_sql       = source_to_target_config.value.source.custom_sql
                    custom_where     = source_to_target_config.value.source.custom_where
                    entity_id        = source_to_target_config.value.source.entity_id
                    entity_type      = source_to_target_config.value.source.entity_type
                    group_by_columns = source_to_target_config.value.source.group_by_columns
                  }
                  target {
                    custom_sql       = source_to_target_config.value.target.custom_sql
                    custom_where     = source_to_target_config.value.target.custom_where
                    entity_id        = source_to_target_config.value.target.entity_id
                    entity_type      = source_to_target_config.value.target.entity_type
                    group_by_columns = source_to_target_config.value.target.group_by_columns
                  }
                }
              }
            }
          }
          name           = data_quality_query.value.name
          schema_version = data_quality_query.value.schema_version
          scope          = data_quality_query.value.scope
        }
      }
      dynamic "event_query" {
        for_each = variables.value.event_query != null ? variables.value.event_query : []
        content {
          dynamic "compute" {
            for_each = event_query.value.compute
            content {
              aggregation = compute.value.aggregation
              interval    = compute.value.interval
              metric      = compute.value.metric
              name        = compute.value.name
            }
          }
          data_source = event_query.value.data_source
          dynamic "group_by" {
            for_each = event_query.value.group_by != null ? event_query.value.group_by : []
            content {
              facet = group_by.value.facet
              limit = group_by.value.limit
              dynamic "sort" {
                for_each = group_by.value.sort != null ? [group_by.value.sort] : []
                content {
                  aggregation = sort.value.aggregation
                  metric      = sort.value.metric
                  order       = sort.value.order
                }
              }
              source = group_by.value.source
            }
          }
          indexes = event_query.value.indexes
          name    = event_query.value.name
          search {
            query = event_query.value.search.query
          }
        }
      }
    }
  }
}

