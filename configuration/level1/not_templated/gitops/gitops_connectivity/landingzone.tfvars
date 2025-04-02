landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "gitops_connectivity"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      tfstate   = "caf_launchpad.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "current"
    }
  }
}