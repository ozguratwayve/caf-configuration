landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "not_templated_identity"
  global_settings_key = "identity"
  tfstates = {
    launchpad = {
      tfstate   = "caf_launchpad.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
    }
    azdo_agents_vm_prod = {
      tfstate   = "azdo_agents_vm_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
