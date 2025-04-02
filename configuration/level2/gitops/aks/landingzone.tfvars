landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "gitops_aks"
  tfstates = {
    gitops_virtual_networks = {
      tfstate = "gitops_virtual_networks.tfstate"
      level   = "current"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "current"
    }
    gitops_aks_identity = {
      tfstate = "gitops_aks_identity.tfstate"
      level   = "current"
    }
  }
}

resource_groups = {
  gitops_aks = {
    name   = "gitops-aks"
    region = "region1"
  }
}
