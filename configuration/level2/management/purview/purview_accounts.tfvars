purview_accounts = {
  management_purview = {
    name                        = "mgmt-purview"
    region                      = "region1"
    public_network_enabled      = false
    managed_resource_group_name = "MR_mgmt-purview"
    resource_group = {
      key = "purview_rg"
    }
    private_endpoints = {
      account = {
        name               = "account"
        resource_group_key = "purview_rg"
        lz_key             = "connectivity_virtual_networks_data_management"
        vnet_key           = "data_mgmt_region1"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "account"
          is_manual_connection = false
          subresource_names    = ["account"]
        }
        private_dns = {
          zone_group_name = "default"
          lz_key          = "connectivity_private_dns_non_prod"
          keys            = ["privatelink.purview.azure.com"]
        }
      }
      portal = {
        name               = "portal"
        resource_group_key = "purview_rg"
        lz_key             = "connectivity_virtual_networks_data_management"
        vnet_key           = "data_mgmt_region1"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "portal"
          is_manual_connection = false
          subresource_names    = ["portal"]
        }
        private_dns = {
          zone_group_name = "default"
          lz_key          = "connectivity_private_dns_non_prod"
          keys            = ["privatelink.purviewstudio.azure.com"]
        }
      }
    }
    # Requires azurerm >= 2.92.0
    managed_resources_private_endpoints = {
      blob = {
        name               = "blob"
        resource_group_key = "purview_rg"
        lz_key             = "connectivity_virtual_networks_data_management"
        vnet_key           = "data_mgmt_region1"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "blob"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "default"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
      queue = {
        name               = "queue"
        resource_group_key = "purview_rg"
        lz_key             = "connectivity_virtual_networks_data_management"
        vnet_key           = "data_mgmt_region1"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "queue"
          is_manual_connection = false
          subresource_names    = ["queue"]
        }
        private_dns = {
          zone_group_name = "default"
          keys            = ["privatelink.queue.core.windows.net"]
        }
      }
      eventhub = {
        name               = "eventhub"
        resource_group_key = "purview_rg"
        lz_key             = "connectivity_virtual_networks_data_management"
        vnet_key           = "data_mgmt_region1"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "eventhub"
          is_manual_connection = false
          subresource_names    = ["namespace"]
        }
        private_dns = {
          zone_group_name = "default"
          keys            = ["privatelink.servicebus.windows.net"]
        }
      }
    }
  }
}

