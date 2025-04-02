landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "gitops_credentials"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
    azdo-agent-levels = {
      level   = "current"
      tfstate = "azure_devops_agents_vm.tfstate"
    }
  }
}



