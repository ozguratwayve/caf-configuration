diagnostic_log_analytics = {
  dm_law_core_internal = {
    name               = "core-internal"
    resource_group_key = "dm_rg_monitoring"
    region             = "region1"
    retention_in_days  = 30
    solutions_maps = {
      ContainerInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ContainerInsights"
      }
    }
  }
}