landingzone = {
  backend_type        = "azurerm"
  level               = "level4"
  key                 = "shared_services_core"
  global_settings_key = "shared_services_identity"
  tfstates = {
    shared_services_identity = {
      tfstate = "shared_services_identity.tfstate"
      level   = "lower"
    }
    shared_services = {
      tfstate = "shared_services.tfstate"
      level   = "lower"
    }
  }
}