landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "vdi_solution"
  global_settings_key = "identity_level2_non_prod"
  tfstates = {
    identity_level2_non_prod = {
      tfstate = "identity_level2_non_prod.tfstate"
      level   = "lower"
    }
  }
}

resource_groups = {
  vdi_solution = {
    name   = "vdi-solution"
    region = "region1"
  }
}
