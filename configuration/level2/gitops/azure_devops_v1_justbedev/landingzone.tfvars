landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "azure_devops_v1_albumeradev"
  tfstates = {
    gitops_aks_identity = {
      level   = "current"
      tfstate = "gitops_aks_identity.tfstate"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
  }
}
