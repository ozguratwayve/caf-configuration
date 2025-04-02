storage_accounts = {
  dm_sa_finingest = {
    name                     = "finingest"
    resource_group_key       = "dm_rg_storage"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
    min_tls_version          = "TLS1_2"
    is_hns_enabled           = true
    allow_blob_public_access = false
    large_file_share_enabled = true

    containers = {
      models = {
        name = "models"
      }
    }

    blob_properties = {
      versioning_enabled       = false
      change_feed_enabled      = false
      last_access_time_enabled = false
      delete_retention_policy = {
        delete_retention_policy = 365
      }
      container_delete_retention_policy = {
        container_delete_retention_policy = 365
      }
    }

    enable_system_msi = {
      type = "SystemAssigned"
    }

    network = {
      bypass         = ["None"]
      default_action = "Deny"
    }

    private_endpoints = {
      dm_pe_storage_dfs_finingest = {
        name               = "dfs-finingest"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-dfs-finingest"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }

        private_dns = {
          keys   = ["privatelink.dfs.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
      dm_pe_storage_blob_finingest = {
        name               = "blob-finingest"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-blob-finingest"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }

        private_dns = {
          keys   = ["privatelink.blob.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }
  }
  dm_sa_merchants = {
    name                     = "merchants"
    resource_group_key       = "dm_rg_storage"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
    min_tls_version          = "TLS1_2"
    is_hns_enabled           = true
    allow_blob_public_access = false
    large_file_share_enabled = true

    containers = {
      models = {
        name = "models"
      }
    }

    blob_properties = {
      versioning_enabled       = false
      change_feed_enabled      = false
      last_access_time_enabled = false
      delete_retention_policy = {
        delete_retention_policy = 365
      }
      container_delete_retention_policy = {
        container_delete_retention_policy = 365
      }
    }

    enable_system_msi = {
      type = "SystemAssigned"
    }

    network = {
      bypass         = ["None"]
      default_action = "Deny"
    }

    private_endpoints = {
      dm_pe_storage_dfs_merchants = {
        name               = "dfs-merchants"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-dfs-merchants"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }

        private_dns = {
          keys   = ["privatelink.dfs.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
      dm_pe_storage_blob_merchants = {
        name               = "blob-merchants"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-blob-merchants"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }

        private_dns = {
          keys   = ["privatelink.blob.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }
  }
  dm_sa_loyalty = {
    name                     = "loyalty"
    resource_group_key       = "dm_rg_storage"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
    min_tls_version          = "TLS1_2"
    is_hns_enabled           = true
    allow_blob_public_access = false
    large_file_share_enabled = true

    containers = {
      models = {
        name = "models"
      }
    }

    blob_properties = {
      versioning_enabled       = false
      change_feed_enabled      = false
      last_access_time_enabled = false
      delete_retention_policy = {
        delete_retention_policy = 365
      }
      container_delete_retention_policy = {
        container_delete_retention_policy = 365
      }
    }

    enable_system_msi = {
      type = "SystemAssigned"
    }

    network = {
      bypass         = ["None"]
      default_action = "Deny"
    }

    private_endpoints = {
      dm_pe_storage_dfs_loyalty = {
        name               = "dfs-loyalty"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-dfs-loyalty"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }

        private_dns = {
          keys   = ["privatelink.dfs.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
      dm_pe_storage_blob_loyalty = {
        name               = "blob-loyalty"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-blob-loyalty"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }

        private_dns = {
          keys   = ["privatelink.blob.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }
  }
  dm_sa_reporting = {
    name                     = "reporting"
    resource_group_key       = "dm_rg_storage"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
    min_tls_version          = "TLS1_2"
    is_hns_enabled           = true
    allow_blob_public_access = false
    large_file_share_enabled = true

    containers = {
      models = {
        name = "models"
      }
    }

    blob_properties = {
      versioning_enabled       = false
      change_feed_enabled      = false
      last_access_time_enabled = false
      delete_retention_policy = {
        delete_retention_policy = 365
      }
      container_delete_retention_policy = {
        container_delete_retention_policy = 365
      }
    }

    enable_system_msi = {
      type = "SystemAssigned"
    }

    network = {
      bypass         = ["None"]
      default_action = "Deny"
    }

    private_endpoints = {
      dm_pe_storage_dfs_reporting = {
        name               = "dfs-reporting"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-dfs-reporting"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }

        private_dns = {
          keys   = ["privatelink.dfs.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
      dm_pe_storage_blob_reporting = {
        name               = "blob-reporting"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_storage_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-sa-blob-reporting"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }

        private_dns = {
          keys   = ["privatelink.blob.core.windows.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }
  }
}