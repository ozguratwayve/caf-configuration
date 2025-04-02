landingzone = {
  backend_type = "azurerm"
  #  global_settings_key = "launchpad"
  level = "level4"
  key   = "management_vault_azuread_app"
  tfstates = {
    management_vault_non_prod = {
      tfstate = "management_vault_non_prod.tfstate"
      level   = "lower"
    }
  }
}


custom_variables = {
  # prefixes      = []
  passthrough  = false
  inherit_tags = true
  # random_length = 0

  tags = {
    landingzone    = "management_vault_azuread_app"
    level          = "level4"
    lz_maintainers = "CAF maintainers"
  }
}