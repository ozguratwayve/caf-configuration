landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "ace_dev"
  tfstates = {
    identity_level2_non_prod = {
      tfstate = "identity_level2_non_prod.tfstate"
      level   = "lower"
    }
  }
}


custom_variables = {
  prefixes      = []
  passthrough   = true
  inherit_tags  = true
  random_length = 0
  tags = {
    lz_maintainers = "Caf maintainers"
  }
}