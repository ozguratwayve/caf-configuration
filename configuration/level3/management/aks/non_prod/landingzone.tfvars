landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "management_aks_non_prod"
  tfstates = {
    connectivity_virtual_networks_management_non_prod = {
      tfstate   = "connectivity_virtual_networks_management_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    connectivity_private_dns_non_prod = {
      tfstate   = "connectivity_private_dns_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity_level2_management_non_prod = {
      tfstate   = "identity_level2_management_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}

resource_groups = {
  management_hosting_non_prod = {
    name   = "management-hosting-non_prod"
    region = "region1"
  }
}

custom_variables = {
  # prefixes      = []
  passthrough  = false
  inherit_tags = true
  # random_length = 0

  tags = {
    landingzone    = "management_aks_non_prod"
    level          = "level3"
    lz_maintainers = "CAF maintainers"
  }
}