landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "tfazure_shared_svc_prod_connectivity"
  global_settings_key = "tfazure_shared_svc_prod"
  tfstates = {
    virtual_hubs_route_tables_prod = {
      tfstate = "connectivity_virtual_hubs_route_tables_prod.tfstate"
      level   = "lower"
    }
    connectivity_virtual_hubs_prod = {
      tfstate = "connectivity_virtual_hubs_prod.tfstate"
      level   = "lower"
    }
    tfazure_shared_svc_prod = {
      tfstate = "tfazure_shared_svc_prod.tfstate"
      level   = "current"
    }
  }
}
