landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "identity"
  level               = "level2"
  key                 = "gitops_aks_identity"
  tfstates = {
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "current"
    }
    gitops_virtual_networks = {
      tfstate = "gitops_virtual_networks.tfstate"
      level   = "current"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
    azdo-agent-levels = {
      tfstate = "azure_devops_agents_vm.tfstate"
      level   = "lower"
    }
  }
}
