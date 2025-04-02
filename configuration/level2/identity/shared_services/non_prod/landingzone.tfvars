landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "identity_level2_shared_services_non_prod"
  global_settings_key = "identity"
  tfstates = {
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity_level2_non_prod = {
      tfstate   = "identity_level2_non_prod.tfstate"
      workspace = "tfstate"
    }
    gitops_aks_identity = {
      tfstate = "gitops_aks_identity.tfstate"
      level   = "current"
    }
  }
}

resource_groups = {
  shared_services_identity_non_prod = {
    name   = "shared_services_identity_non_prod"
    region = "region1"
  }
}