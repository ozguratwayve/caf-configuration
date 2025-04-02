landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "azdo-agent-levels"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
    launchpad_credentials = {
      level   = "lower"
      tfstate = "launchpad_credentials.tfstate"
    }
    gitops_connectivity = {
      level   = "current"
      tfstate = "gitops_connectivity.tfstate"
    }
  }
}

