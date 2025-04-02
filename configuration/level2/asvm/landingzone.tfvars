landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "asvm"
  global_settings_key = "management"
  tfstates = {
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
