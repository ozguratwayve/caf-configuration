landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "azure_devops-keymate_common.tfstate"
  tfstates = {
    launchpad_credentials = {
      level   = "lower"
      tfstate = "launchpad_credentials.tfstate"
    }
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}