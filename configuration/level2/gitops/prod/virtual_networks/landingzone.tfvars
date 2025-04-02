landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "gitops_virtual_networks_prod"
  tfstates = {
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
    connectivity_private_dns_firewalls_prod = {
      tfstate = "connectivity_private_dns_firewalls_prod.tfstate"
      level   = "current"
    }
    connectivity_virtual_hubs_prod = {
      tfstate = "connectivity_virtual_hubs_prod.tfstate"
      level   = "current"
    }
    virtual_hubs_route_tables_prod = {
      tfstate = "connectivity_virtual_hubs_route_tables_prod.tfstate"
      level   = "current"
    }
  }
}
