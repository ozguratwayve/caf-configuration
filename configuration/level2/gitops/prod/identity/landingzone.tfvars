landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "gitops_aks_identity_prod"
  tfstates = {
    connectivity_private_dns_prod = {
      tfstate = "connectivity_private_dns_prod.tfstate"
      level   = "current"
    }
    gitops_virtual_networks_prod = {
      tfstate = "gitops_virtual_networks_prod.tfstate"
      level   = "current"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
    azdo_agents_vm_prod = {
      tfstate = "azdo_agents_vm_prod.tfstate"
      level   = "lower"
    }
  }
}
