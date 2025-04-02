landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "tfazure_connectivity"
  global_settings_key = "connectivity_virtual_hubs_non_prod"
  tfstates = {
    virtual_hubs_route_tables_non_prod = {
      tfstate = "connectivity_virtual_hubs_route_tables_non_prod.tfstate"
      level   = "current"
    }
    connectivity_virtual_hubs_non_prod = {
      tfstate   = "connectivity_virtual_hubs_non_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
