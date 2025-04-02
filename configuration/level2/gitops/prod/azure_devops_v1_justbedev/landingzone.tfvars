landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "azure_devops_v1_albumeradev_prod"
  tfstates = {
    gitops_aks_identity_prod = {
      level   = "current"
      tfstate = "gitops_aks_identity_prod.tfstate"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
  }
}
