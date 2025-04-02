landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_virtual_networks_data_management"
  global_settings_key = "connectivity_virtual_hubs_non_prod"
  tfstates = {
    connectivity_private_dns_firewalls_non_prod = {
      tfstate = "connectivity_private_dns_firewalls_non_prod.tfstate"
    }
    connectivity_virtual_hubs_non_prod = {
      tfstate = "connectivity_virtual_hubs_non_prod.tfstate"
    }
    virtual_hubs_route_tables_non_prod = {
      tfstate = "connectivity_virtual_hubs_route_tables_non_prod.tfstate"
    }
    identity_level2_data_management = {
      tfstate = "identity_level2_data_management.tfstate"
    }
  }
}
