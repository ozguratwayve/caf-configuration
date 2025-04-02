landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_virtual_hubs_prod"
  global_settings_key = "connectivity_virtual_wans_prod"
  tfstates = {
    connectivity_virtual_wans_prod = {
      tfstate   = "connectivity_virtual_wans_prod.tfstate"
      workspace = "tfstate"
    }
    # Should not be needed, but since the landing zone been created with this, its inheriting prefix from the gitops landingzone. Removing it will re-create all the resources in this landing zone
    gitops_connectivity_prod = {
      level   = "lower"
      tfstate = "gitops_connectivity_prod.tfstate"
    }
  }
}
custom_variables = {
  virtual_hub_lz_key = "connectivity_virtual_hubs_prod"
}
