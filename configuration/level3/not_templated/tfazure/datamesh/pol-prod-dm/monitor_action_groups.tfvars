
monitor_action_groups = {
  dm_mag = {
    action_group_name  = "datameshag"
    resource_group_key = "dm_rg_monitoring"
    shortname          = "mag"
    email_receiver = {
      email_alert1 = {
        name                    = "email_alert_servicehealth_me"
        email_address           = "datamesh-support@keymate.global"
        use_common_alert_schema = false
      }
    }
  }
}

monitor_metric_alert = {
  aks_cpu = {
    name = "aks_cpu_alert"
    resource_group = {
      key = "dm_rg_aks"
    }
    description = "Alert when cpu usage in AKS cluster exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        resource_type = "aks_clusters"
        key           = "dm_aks_core"
      }
    }
    criteria = {
      metric_namespace = "microsoft.containerservice/managedclusters"
      metric_name      = "node_cpu_usage_percentage"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }

  }

  aks_disk = {
    name = "aks_disk_alert"
    resource_group = {
      key = "dm_rg_aks"
    }
    description = "Alert when disk usage in AKS cluster exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        resource_type = "aks_clusters"
        key           = "dm_aks_core"
      }
    }
    criteria = {
      metric_namespace = "microsoft.containerservice/managedclusters"
      metric_name      = "node_disk_usage_percentage"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }

  aks_memory = {
    name = "aks_memory_alert"
    resource_group = {
      key = "dm_rg_aks"
    }
    description = "Alert when memory usage in AKS cluster exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        resource_type = "aks_clusters"
        key           = "dm_aks_core"
      }
    }
    criteria = {
      metric_namespace = "microsoft.containerservice/managedclusters"
      metric_name      = "node_memory_working_set_bytes"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }

  supersets_cpu = {
    name = "supersets_cpu_alert"
    resource_group = {
      key = "dm_rg_databases"
    }
    description = "Alert when cpu usage exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        id = "/subscriptions/40c10189-007b-49a9-88eb-8ed1306b1627/resourceGroups/pol-prod-dm-rg-databases/providers/Microsoft.DBforPostgreSQL/flexibleServers/pol-prod-dm-psqlf-core-superset"
      }
    }
    criteria = {
      metric_namespace = "microsoft.dbforpostgresql/flexibleservers"
      metric_name      = "cpu_percent"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }

  }

  supersets_disk = {
    name = "supersets_disk_alert"
    resource_group = {
      key = "dm_rg_databases"
    }
    description = "Alert when disk usage exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        # There is a bug in CAF code. postgresql_flexible_servers resource type does not have a 'id' field in the terraform state. Its called postgresql_flexible_server_id
        id = "/subscriptions/40c10189-007b-49a9-88eb-8ed1306b1627/resourceGroups/pol-prod-dm-rg-databases/providers/Microsoft.DBforPostgreSQL/flexibleServers/pol-prod-dm-psqlf-core-superset"
      }
    }
    criteria = {
      metric_namespace = "microsoft.dbforpostgresql/flexibleservers"
      metric_name      = "disk_queue_depth"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }

  supersets_memory = {
    name = "supersets_memory_alert"
    resource_group = {
      key = "dm_rg_databases"
    }
    description = "Alert when memory usage exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        id = "/subscriptions/40c10189-007b-49a9-88eb-8ed1306b1627/resourceGroups/pol-prod-dm-rg-databases/providers/Microsoft.DBforPostgreSQL/flexibleServers/pol-prod-dm-psqlf-core-superset"
      }
    }
    criteria = {
      metric_namespace = "microsoft.dbforpostgresql/flexibleservers"
      metric_name      = "memory_percent"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }

  hive_cpu = {
    name = "hive_cpu_alert"
    resource_group = {
      key = "dm_rg_databases"
    }
    description = "Alert when cpu usage exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        id = "/subscriptions/40c10189-007b-49a9-88eb-8ed1306b1627/resourceGroups/pol-prod-dm-rg-databases/providers/Microsoft.DBforPostgreSQL/flexibleServers/pol-prod-dm-psqlf-core-hive"
      }
    }
    criteria = {
      metric_namespace = "microsoft.dbforpostgresql/flexibleservers"
      metric_name      = "cpu_percent"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }

  hive_disk = {
    name = "hive_disk_alert"
    resource_group = {
      key = "dm_rg_databases"
    }
    description = "Alert when disk usage exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        id = "/subscriptions/40c10189-007b-49a9-88eb-8ed1306b1627/resourceGroups/pol-prod-dm-rg-databases/providers/Microsoft.DBforPostgreSQL/flexibleServers/pol-prod-dm-psqlf-core-hive"
      }
    }
    criteria = {
      metric_namespace = "microsoft.dbforpostgresql/flexibleservers"
      metric_name      = "disk_queue_depth"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }

  hive_memory = {
    name = "hive_memory_alert"
    resource_group = {
      key = "dm_rg_databases"
    }
    description = "Alert when memory usage exceeds 80% for 30 minutes."
    frequency   = "PT30M"
    window_size = "PT30M"
    scopes = {
      scope1 = {
        id = "/subscriptions/40c10189-007b-49a9-88eb-8ed1306b1627/resourceGroups/pol-prod-dm-rg-databases/providers/Microsoft.DBforPostgreSQL/flexibleServers/pol-prod-dm-psqlf-core-hive"
      }
    }
    criteria = {
      metric_namespace = "microsoft.dbforpostgresql/flexibleservers"
      metric_name      = "memory_percent"
      aggregation      = "Average"
      operator         = "GreaterThan"
      threshold        = 80

    }

    action = {
      action_group = {
        key = "dm_mag"
      }
    }
  }


}