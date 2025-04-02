landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "pol_dev_dm"

  tfstates = {
    tfazure_shared_svc = {
      tfstate = "tfazure_shared_svc.tfstate"
      level   = "current"
    }
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_private_dns_firewalls_non_prod = {
      tfstate = "connectivity_private_dns_firewalls_non_prod.tfstate"
      level   = "lower"
    }
  }
}