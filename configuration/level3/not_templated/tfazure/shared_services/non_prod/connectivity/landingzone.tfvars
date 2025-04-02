landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "tfazure_shared_svc_connectivity"
  global_settings_key = "tfazure_shared_svc"
  tfstates = {
    virtual_hubs_route_tables_non_prod = {
      tfstate = "connectivity_virtual_hubs_route_tables_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_virtual_hubs_non_prod = {
      tfstate = "connectivity_virtual_hubs_non_prod.tfstate"
      level   = "lower"
    }
    tfazure_shared_svc = {
      tfstate = "tfazure_shared_svc.tfstate"
      level   = "current"
    }
  }
}