role_mapping = {
  built_in_role_mapping = {
    subscriptions = {
      "logged_in_subscription" = {
        "Reader" = {
          azuread_groups = {
            keys = ["dm_aadg_landingzone_readers"]
          }
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = ["dm_aadg_landingzone_contributors"]
          }
        }
        "Log Analytics Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
        "Tag Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
    }

    resource_groups = {
      dm_rg_aks = {
        "Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
        "Azure Kubernetes Service Cluster User Role" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
          azuread_groups = {
            keys = ["dm_aadg_aks_admins"]
          }
        }
        "Azure Kubernetes Service RBAC Cluster Admin" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
          azuread_groups = {
            keys = ["dm_aadg_aks_admins"]
          }
        }
        "User Access Administrator" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_rg_analytics = {
        "Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
          azuread_groups = {
            keys = ["dm_aadg_databricks_admins"]
          }
        }
      }
      dm_rg_databases = {
        "Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_rg_monitoring = {
        "Monitoring Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_rg_caching = {
        "Redis Cache Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_rg_storage = {
        "Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
    }

    managed_identities = {
      dm_msi_aks_core_kubelet = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["dm_msi_aks_core"]
          }
        }
      }
    }

    private_dns = {
      "privatelink.uksouth.azmk8s.io" = {
        lz_key = "connectivity_private_dns_prod"
        "Private DNS Zone Contributor" = {
          managed_identities = {
            keys = ["dm_msi_aks_core"]
          }
        }
      }
    }

    dns_zones = {
      "dm_dz_core" = {
        "DNS Zone Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
    }

    networking = {
      dm_vnet_core = {
        "Network Contributor" = {
          managed_identities = {
            keys = ["dm_msi_aks_core"]
          }
          object_ids = {
            keys = [
              "41da7bee-0eca-4d06-a280-d9eab13ca265" # pildev-sp-caf-management [c9a79c47-1513-4830-9e7a-c1e84596afdd]
            ]
          }
        }
      }
    }

    aks_clusters = {
      dm_aks_core = {
        "Azure Kubernetes Service Cluster Admin Role" = {
          managed_identities = {
            keys = ["dm_msi_aks_core", "dm_msi_aks_core_kubelet"]
          }
        }
      }
    }

    azure_container_registries = {
      dm_acr_core = {
        "AcrPull" = {
          aks_clusters = {
            keys = ["dm_aks_core"]
          }
        }
      }
    }

    storage_accounts = {
      dm_sa_finingest = {
        "Storage Blob Data Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_sa_merchants = {
        "Storage Blob Data Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_sa_loyalty = {
        "Storage Blob Data Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
      dm_sa_reporting = {
        "Storage Blob Data Contributor" = {
          azuread_service_principals = {
            keys   = ["tfazure_pol_prod_dm"]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
    }
  }
}