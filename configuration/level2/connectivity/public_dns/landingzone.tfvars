landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "networking_public_dns"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate = "management.tfstate"
      level   = "lower"
    }
  }
}
