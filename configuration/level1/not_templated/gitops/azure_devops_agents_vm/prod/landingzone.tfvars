landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "gitops_connectivity_prod"
  level               = "level1"
  key                 = "azdo_agents_vm_prod"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
    launchpad_credentials = {
      level   = "lower"
      tfstate = "launchpad_credentials.tfstate"
    }
    gitops_connectivity_prod = {
      level   = "current"
      tfstate = "gitops_connectivity_prod.tfstate"
    }
  }
}

