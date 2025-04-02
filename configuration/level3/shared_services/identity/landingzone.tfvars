landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "shared_services_identity"
  global_settings_key = "identity_level2_non_prod"
  tfstates = {
    identity_level2_non_prod = {
      tfstate = "identity_level2_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_virtual_networks_shared_services_non_prod = {
      tfstate = "connectivity_virtual_networks_shared_services_non_prod.tfstate"
      level   = "lower"
    }
  }
}

resource_groups = {
  shared_services_identity = {
    name   = "shared-services-identity"
    region = "region1"
  }
}