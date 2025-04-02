#
# Define the settings for CAF diagnostics log analytics workspace and solution map
#

diagnostic_log_analytics = {
  region1 = {
    region             = "region1"
    name               = "logre1"
    resource_group_key = "management"
    solutions_maps = {
      NetworkMonitoring = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/NetworkMonitoring"
      }
      ADAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADAssessment"
      }
      ADReplication = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADReplication"
      }
      AgentHealthAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/AgentHealthAssessment"
      }
      DnsAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/DnsAnalytics"
      }
      ContainerInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ContainerInsights"
      }
      KeyVaultAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/KeyVaultAnalytics"
      }

    }
  }

  sentinel_re1 = {
    region             = "region1"
    name               = "sentinel-re1"
    resource_group_key = "management"
    solutions_maps = {
      SecurityInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/SecurityInsights"
      }
      SQLAdvancedThreatProtection = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/SQLAdvancedThreatProtection"
      }
      SecurityCenterFree = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/SecurityCenterFree"
      }
      SQLVulnerabilityAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/SQLVulnerabilityAssessment"
      }
      Security = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/Security"
      }
      BehaviorAnalyticsInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/BehaviorAnalyticsInsights"
      }
    }
  }
}
