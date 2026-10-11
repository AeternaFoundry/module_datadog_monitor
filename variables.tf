variable "monitors" {
  description = <<EOT
Map of monitors, attributes below
Required:
    - message
    - name
    - query
    - type
Optional:
    - draft_status
    - enable_logs_sample
    - enable_samples
    - escalation_message
    - evaluation_delay
    - force_delete
    - group_retention_duration
    - groupby_simple_monitor
    - ignore_tag_keys
    - include_tags
    - new_group_delay
    - new_host_delay
    - no_data_timeframe
    - notification_preset_name
    - notify_audit
    - notify_by
    - notify_no_data
    - on_missing_data
    - priority
    - renotify_interval
    - renotify_occurrences
    - renotify_statuses
    - require_full_window
    - restricted_roles
    - tags
    - timeout_h
    - validate
    - assets (block):
        - category (required)
        - name (required)
        - resource_key (optional)
        - resource_type (optional)
        - url (required)
    - monitor_threshold_windows (block):
        - recovery_window (optional)
        - trigger_window (optional)
    - monitor_thresholds (block):
        - critical (optional)
        - critical_query (optional)
        - critical_recovery (optional)
        - critical_recovery_query (optional)
        - ok (optional)
        - unknown (optional)
        - warning (optional)
        - warning_recovery (optional)
    - scheduling_options (block):
        - custom_schedule (optional, block):
            - recurrence (required, block):
                - rrule (required)
                - start (optional)
                - timezone (required)
        - evaluation_window (optional, block):
            - day_starts (optional)
            - hour_starts (optional)
            - month_starts (optional)
            - timezone (optional)
    - variables (block):
        - aggregate_augmented_query (optional, block):
            - augment_event_query (optional, block):
                - compute (required, block):
                    - aggregation (required)
                    - interval (optional)
                    - metric (optional)
                    - name (optional)
                - data_source (required)
                - group_by (optional, block):
                    - facet (required)
                    - limit (optional)
                    - sort (optional, block):
                        - aggregation (required)
                        - metric (optional)
                        - order (optional)
                    - source (optional)
                - indexes (optional)
                - name (required)
                - search (required, block):
                    - query (required)
            - augment_reference_table (optional, block):
                - columns (optional, block):
                    - alias (optional)
                    - name (required)
                - data_source (required)
                - name (optional)
                - query_filter (optional)
                - table_name (required)
            - base_event_query (optional, block):
                - compute (required, block):
                    - aggregation (required)
                    - interval (optional)
                    - metric (optional)
                    - name (optional)
                - data_source (required)
                - group_by (optional, block):
                    - facet (required)
                    - limit (optional)
                    - sort (optional, block):
                        - aggregation (required)
                        - metric (optional)
                        - order (optional)
                    - source (optional)
                - indexes (optional)
                - name (required)
                - search (required, block):
                    - query (required)
            - base_metrics_query (optional, block):
                - aggregator (optional)
                - data_source (required)
                - name (optional)
                - query (required)
            - compute (required, block):
                - aggregation (required)
                - interval (optional)
                - metric (optional)
                - name (optional)
            - data_source (required)
            - group_by (required, block):
                - facet (required)
                - limit (optional)
                - sort (optional, block):
                    - aggregation (required)
                    - metric (optional)
                    - order (optional)
                - source (optional)
            - join_condition (required, block):
                - augment_attribute (required)
                - base_attribute (required)
                - join_type (required)
            - name (optional)
        - aggregate_filtered_query (optional, block):
            - base_event_query (optional, block):
                - compute (required, block):
                    - aggregation (required)
                    - interval (optional)
                    - metric (optional)
                    - name (optional)
                - data_source (required)
                - group_by (optional, block):
                    - facet (required)
                    - limit (optional)
                    - sort (optional, block):
                        - aggregation (required)
                        - metric (optional)
                        - order (optional)
                    - source (optional)
                - indexes (optional)
                - name (required)
                - search (required, block):
                    - query (required)
            - base_metrics_query (optional, block):
                - aggregator (optional)
                - data_source (required)
                - name (optional)
                - query (required)
            - compute (optional, block):
                - aggregation (required)
                - interval (optional)
                - metric (optional)
                - name (optional)
            - data_source (required)
            - filter_event_query (optional, block):
                - compute (required, block):
                    - aggregation (required)
                    - interval (optional)
                    - metric (optional)
                    - name (optional)
                - data_source (required)
                - group_by (optional, block):
                    - facet (required)
                    - limit (optional)
                    - sort (optional, block):
                        - aggregation (required)
                        - metric (optional)
                        - order (optional)
                    - source (optional)
                - indexes (optional)
                - name (required)
                - search (required, block):
                    - query (required)
            - filter_reference_table (optional, block):
                - columns (optional, block):
                    - alias (optional)
                    - name (required)
                - data_source (required)
                - name (optional)
                - query_filter (optional)
                - table_name (required)
            - filters (required, block):
                - base_attribute (required)
                - exclude (optional)
                - filter_attribute (required)
            - group_by (optional, block):
                - facet (required)
                - limit (optional)
                - sort (optional, block):
                    - aggregation (required)
                    - metric (optional)
                    - order (optional)
                - source (optional)
            - name (optional)
        - cloud_cost_query (optional, block):
            - aggregator (required)
            - data_source (required)
            - name (required)
            - query (required)
        - data_jobs_query (optional, block):
            - job_type (required)
            - jobs_query (required)
            - name (required)
            - query_dialect (required)
        - data_quality_query (optional, block):
            - data_source (required)
            - filter (required)
            - group_by (optional)
            - measure (required)
            - monitor_options (optional, block):
                - crontab_override (optional)
                - custom_sql (optional)
                - custom_where (optional)
                - group_by_columns (optional)
                - model_configuration (optional, block):
                    - auto_resolve_days (optional)
                    - enable_flatline_detection (optional)
                    - function (optional)
                    - min_lower_bound_size (optional)
                    - min_upper_bound_size (optional)
                    - model_bounds_override (optional)
                - model_type_override (optional)
                - sensitivity (optional)
                - source_to_target_config (optional, block):
                    - diff_type (required)
                    - entity_type (required)
                    - source (required, block):
                        - custom_sql (optional)
                        - custom_where (optional)
                        - entity_id (required)
                        - entity_type (required)
                        - group_by_columns (optional)
                    - target (required, block):
                        - custom_sql (optional)
                        - custom_where (optional)
                        - entity_id (required)
                        - entity_type (required)
                        - group_by_columns (optional)
            - name (required)
            - schema_version (optional)
            - scope (optional)
        - event_query (optional, block):
            - compute (required, block):
                - aggregation (required)
                - interval (optional)
                - metric (optional)
                - name (optional)
            - data_source (required)
            - group_by (optional, block):
                - facet (required)
                - limit (optional)
                - sort (optional, block):
                    - aggregation (required)
                    - metric (optional)
                    - order (optional)
                - source (optional)
            - indexes (optional)
            - name (required)
            - search (required, block):
                - query (required)
EOT

  type = map(object({
    message                  = string
    name                     = string
    query                    = string
    type                     = string
    draft_status             = optional(string)
    enable_logs_sample       = optional(bool)
    enable_samples           = optional(bool)
    escalation_message       = optional(string)
    evaluation_delay         = optional(number)
    force_delete             = optional(bool)
    group_retention_duration = optional(string)
    groupby_simple_monitor   = optional(bool)
    ignore_tag_keys          = optional(set(string))
    include_tags             = optional(bool)
    new_group_delay          = optional(number)
    new_host_delay           = optional(number)
    no_data_timeframe        = optional(number)
    notification_preset_name = optional(string)
    notify_audit             = optional(bool)
    notify_by                = optional(set(string))
    notify_no_data           = optional(bool)
    on_missing_data          = optional(string)
    priority                 = optional(string)
    renotify_interval        = optional(number)
    renotify_occurrences     = optional(number)
    renotify_statuses        = optional(set(string))
    require_full_window      = optional(bool)
    restricted_roles         = optional(set(string))
    tags                     = optional(set(string))
    timeout_h                = optional(number)
    validate                 = optional(bool)
    assets = optional(list(object({
      category      = string
      name          = string
      resource_key  = optional(string)
      resource_type = optional(string)
      url           = string
    })))
    monitor_threshold_windows = optional(object({
      recovery_window = optional(string)
      trigger_window  = optional(string)
    }))
    monitor_thresholds = optional(object({
      critical                = optional(string)
      critical_query          = optional(string)
      critical_recovery       = optional(string)
      critical_recovery_query = optional(string)
      ok                      = optional(string)
      unknown                 = optional(string)
      warning                 = optional(string)
      warning_recovery        = optional(string)
    }))
    scheduling_options = optional(object({
      custom_schedule = optional(object({
        recurrence = object({
          rrule    = string
          start    = optional(string)
          timezone = string
        })
      }))
      evaluation_window = optional(object({
        day_starts   = optional(string)
        hour_starts  = optional(number)
        month_starts = optional(number)
        timezone     = optional(string)
      }))
    }))
    variables = optional(object({
      aggregate_augmented_query = optional(list(object({
        augment_event_query = optional(object({
          compute = list(object({
            aggregation = string
            interval    = optional(number)
            metric      = optional(string)
            name        = optional(string)
          }))
          data_source = string
          group_by = optional(list(object({
            facet = string
            limit = optional(number)
            sort = optional(object({
              aggregation = string
              metric      = optional(string)
              order       = optional(string)
            }))
            source = optional(string)
          })))
          indexes = optional(list(string))
          name    = string
          search = object({
            query = string
          })
        }))
        augment_reference_table = optional(object({
          columns = optional(list(object({
            alias = optional(string)
            name  = string
          })))
          data_source  = string
          name         = optional(string)
          query_filter = optional(string)
          table_name   = string
        }))
        base_event_query = optional(object({
          compute = list(object({
            aggregation = string
            interval    = optional(number)
            metric      = optional(string)
            name        = optional(string)
          }))
          data_source = string
          group_by = optional(list(object({
            facet = string
            limit = optional(number)
            sort = optional(object({
              aggregation = string
              metric      = optional(string)
              order       = optional(string)
            }))
            source = optional(string)
          })))
          indexes = optional(list(string))
          name    = string
          search = object({
            query = string
          })
        }))
        base_metrics_query = optional(object({
          aggregator  = optional(string)
          data_source = string
          name        = optional(string)
          query       = string
        }))
        compute = list(object({
          aggregation = string
          interval    = optional(number)
          metric      = optional(string)
          name        = optional(string)
        }))
        data_source = string
        group_by = list(object({
          facet = string
          limit = optional(number)
          sort = optional(object({
            aggregation = string
            metric      = optional(string)
            order       = optional(string)
          }))
          source = optional(string)
        }))
        join_condition = object({
          augment_attribute = string
          base_attribute    = string
          join_type         = string
        })
        name = optional(string)
      })))
      aggregate_filtered_query = optional(list(object({
        base_event_query = optional(object({
          compute = list(object({
            aggregation = string
            interval    = optional(number)
            metric      = optional(string)
            name        = optional(string)
          }))
          data_source = string
          group_by = optional(list(object({
            facet = string
            limit = optional(number)
            sort = optional(object({
              aggregation = string
              metric      = optional(string)
              order       = optional(string)
            }))
            source = optional(string)
          })))
          indexes = optional(list(string))
          name    = string
          search = object({
            query = string
          })
        }))
        base_metrics_query = optional(object({
          aggregator  = optional(string)
          data_source = string
          name        = optional(string)
          query       = string
        }))
        compute = optional(list(object({
          aggregation = string
          interval    = optional(number)
          metric      = optional(string)
          name        = optional(string)
        })))
        data_source = string
        filter_event_query = optional(object({
          compute = list(object({
            aggregation = string
            interval    = optional(number)
            metric      = optional(string)
            name        = optional(string)
          }))
          data_source = string
          group_by = optional(list(object({
            facet = string
            limit = optional(number)
            sort = optional(object({
              aggregation = string
              metric      = optional(string)
              order       = optional(string)
            }))
            source = optional(string)
          })))
          indexes = optional(list(string))
          name    = string
          search = object({
            query = string
          })
        }))
        filter_reference_table = optional(object({
          columns = optional(list(object({
            alias = optional(string)
            name  = string
          })))
          data_source  = string
          name         = optional(string)
          query_filter = optional(string)
          table_name   = string
        }))
        filters = list(object({
          base_attribute   = string
          exclude          = optional(bool)
          filter_attribute = string
        }))
        group_by = optional(list(object({
          facet = string
          limit = optional(number)
          sort = optional(object({
            aggregation = string
            metric      = optional(string)
            order       = optional(string)
          }))
          source = optional(string)
        })))
        name = optional(string)
      })))
      cloud_cost_query = optional(list(object({
        aggregator  = string
        data_source = string
        name        = string
        query       = string
      })))
      data_jobs_query = optional(list(object({
        job_type      = string
        jobs_query    = string
        name          = string
        query_dialect = string
      })))
      data_quality_query = optional(list(object({
        data_source = string
        filter      = string
        group_by    = optional(list(string))
        measure     = string
        monitor_options = optional(object({
          crontab_override = optional(string)
          custom_sql       = optional(string)
          custom_where     = optional(string)
          group_by_columns = optional(list(string))
          model_configuration = optional(object({
            auto_resolve_days         = optional(number)
            enable_flatline_detection = optional(bool)
            function                  = optional(string)
            min_lower_bound_size      = optional(number)
            min_upper_bound_size      = optional(number)
            model_bounds_override     = optional(string)
          }))
          model_type_override = optional(string)
          sensitivity         = optional(number)
          source_to_target_config = optional(object({
            diff_type   = string
            entity_type = string
            source = object({
              custom_sql       = optional(string)
              custom_where     = optional(string)
              entity_id        = string
              entity_type      = string
              group_by_columns = optional(list(string))
            })
            target = object({
              custom_sql       = optional(string)
              custom_where     = optional(string)
              entity_id        = string
              entity_type      = string
              group_by_columns = optional(list(string))
            })
          }))
        }))
        name           = string
        schema_version = optional(string)
        scope          = optional(string)
      })))
      event_query = optional(list(object({
        compute = list(object({
          aggregation = string
          interval    = optional(number)
          metric      = optional(string)
          name        = optional(string)
        }))
        data_source = string
        group_by = optional(list(object({
          facet = string
          limit = optional(number)
          sort = optional(object({
            aggregation = string
            metric      = optional(string)
            order       = optional(string)
          }))
          source = optional(string)
        })))
        indexes = optional(list(string))
        name    = string
        search = object({
          query = string
        })
      })))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_augmented_query == null || alltrue([for item in v.variables.aggregate_augmented_query : (item.augment_event_query == null || (length(item.augment_event_query.compute) >= 1))]))
      )
    ])
    error_message = "Each compute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_augmented_query == null || alltrue([for item in v.variables.aggregate_augmented_query : (item.base_event_query == null || (length(item.base_event_query.compute) >= 1))]))
      )
    ])
    error_message = "Each compute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_augmented_query == null || alltrue([for item in v.variables.aggregate_augmented_query : (length(item.compute) >= 1)]))
      )
    ])
    error_message = "Each compute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_augmented_query == null || alltrue([for item in v.variables.aggregate_augmented_query : (length(item.group_by) >= 1)]))
      )
    ])
    error_message = "Each group_by list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_filtered_query == null || alltrue([for item in v.variables.aggregate_filtered_query : (item.base_event_query == null || (length(item.base_event_query.compute) >= 1))]))
      )
    ])
    error_message = "Each compute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_filtered_query == null || alltrue([for item in v.variables.aggregate_filtered_query : (item.filter_event_query == null || (length(item.filter_event_query.compute) >= 1))]))
      )
    ])
    error_message = "Each compute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.aggregate_filtered_query == null || alltrue([for item in v.variables.aggregate_filtered_query : (length(item.filters) >= 1)]))
      )
    ])
    error_message = "Each filters list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.cloud_cost_query == null || (length(v.variables.cloud_cost_query) <= 5))
      )
    ])
    error_message = "Each cloud_cost_query list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.data_jobs_query == null || (length(v.variables.data_jobs_query) <= 5))
      )
    ])
    error_message = "Each data_jobs_query list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.data_quality_query == null || (length(v.variables.data_quality_query) <= 5))
      )
    ])
    error_message = "Each data_quality_query list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.event_query == null || alltrue([for item in v.variables.event_query : (length(item.compute) >= 1)]))
      )
    ])
    error_message = "Each compute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.monitor_thresholds == null || (v.monitor_thresholds.ok == null || (can(regex("\\d*(\\.\\d*)?", v.monitor_thresholds.ok))))
      )
    ])
    error_message = "value must be a float"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.monitor_thresholds == null || (v.monitor_thresholds.warning == null || (can(regex("\\d*(\\.\\d*)?", v.monitor_thresholds.warning))))
      )
    ])
    error_message = "value must be a float"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.monitor_thresholds == null || (v.monitor_thresholds.critical == null || (can(regex("\\d*(\\.\\d*)?", v.monitor_thresholds.critical))))
      )
    ])
    error_message = "value must be a float"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.monitor_thresholds == null || (v.monitor_thresholds.unknown == null || (can(regex("\\d*(\\.\\d*)?", v.monitor_thresholds.unknown))))
      )
    ])
    error_message = "value must be a float"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.monitor_thresholds == null || (v.monitor_thresholds.warning_recovery == null || (can(regex("\\d*(\\.\\d*)?", v.monitor_thresholds.warning_recovery))))
      )
    ])
    error_message = "value must be a float"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.monitor_thresholds == null || (v.monitor_thresholds.critical_recovery == null || (can(regex("\\d*(\\.\\d*)?", v.monitor_thresholds.critical_recovery))))
      )
    ])
    error_message = "value must be a float"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitors : (
        v.variables == null || (v.variables.data_quality_query == null || alltrue([for item in v.variables.data_quality_query : (item.monitor_options == null || (item.monitor_options.model_configuration == null || (item.monitor_options.model_configuration.auto_resolve_days == null || (item.monitor_options.model_configuration.auto_resolve_days >= -2147483648 && item.monitor_options.model_configuration.auto_resolve_days <= 2147483647))))]))
      )
    ])
    error_message = "must be between -2147483648 and 2147483647"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

