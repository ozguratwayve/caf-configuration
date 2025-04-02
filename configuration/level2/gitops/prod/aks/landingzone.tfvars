landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "gitops_aks_prod"
  tfstates = {
    gitops_virtual_networks_prod = {
      tfstate = "gitops_virtual_networks_prod.tfstate"
      level   = "current"
    }
    connectivity_private_dns_prod = {
      tfstate = "connectivity_private_dns_prod.tfstate"
      level   = "current"
    }
    gitops_aks_identity_prod = {
      tfstate = "gitops_aks_identity_prod.tfstate"
      level   = "current"
    }
  }
}

resource_groups = {
  gitops_aks_prod = {
    name   = "gitops-aks-prod"
    region = "region1"
  }
}
