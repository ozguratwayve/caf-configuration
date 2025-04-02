landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "tfazure_shared_svc_azdo"
  global_settings_key = "tfazure_shared_svc"
  tfstates = {
    gitops_aks_identity = {
      level   = "lower"
      tfstate = "gitops_aks_identity.tfstate"
    }
    tfazure_shared_svc = {
      level   = "current"
      tfstate = "tfazure_shared_svc.tfstate"
    }
    sre_sbox = {
      tfstate = "sre_sbox.tfstate"
      level   = "current"
    }
  }
}
