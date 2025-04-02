landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "shared_services"
  global_settings_key = "shared_services_identity"
  tfstates = {
    connectivity_virtual_networks_shared_services_non_prod = {
      tfstate = "connectivity_virtual_networks_shared_services_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "lower"
    }
    shared_services_identity = {
      tfstate = "shared_services_identity.tfstate"
    }
  }
}