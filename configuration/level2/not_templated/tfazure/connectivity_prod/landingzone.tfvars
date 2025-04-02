landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "tfazure_connectivity_prod"
  global_settings_key = "connectivity_virtual_hubs_prod"
  tfstates = {
    virtual_hubs_route_tables_prod = {
      tfstate = "connectivity_virtual_hubs_route_tables_prod.tfstate"
      level   = "current"
    }
    connectivity_virtual_hubs_prod = {
      tfstate   = "connectivity_virtual_hubs_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
