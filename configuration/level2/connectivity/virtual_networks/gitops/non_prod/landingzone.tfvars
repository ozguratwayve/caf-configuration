landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_virtual_networks_gitops_non_prod"
  global_settings_key = "connectivity_virtual_hubs_non_prod"
  tfstates = {
    connectivity_virtual_hubs_non_prod = {
      tfstate   = "connectivity_virtual_hubs_non_prod.tfstate"
      workspace = "tfstate"
    }
    virtual_hubs_route_tables_non_prod = {
      tfstate   = "connectivity_virtual_hubs_route_tables_non_prod.tfstate"
      workspace = "tfstate"
    }
    gitops_connectivity = {
      tfstate   = "gitops_connectivity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}

custom_variables = {
  # prefixes      = []
  passthrough  = false
  inherit_tags = true
  # random_length = 0

  tags = {
    landingzone    = "connectivity_virtual_networks_gitops_non_prod"
    level          = "level2"
    lz_maintainers = "Caf maintainers"
  }
}