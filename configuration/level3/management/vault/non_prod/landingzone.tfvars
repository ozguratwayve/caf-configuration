landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "management_vault_non_prod"
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
    tfazure_shared_svc = {
      tfstate = "tfazure_shared_svc.tfstate"
      level   = "current"
    }
  }
}

resource_groups = {
  management_vault_non_prod = {
    name   = "management-vault-non-prod"
    region = "region1"
  }
}

custom_variables = {
  prefixes      = ["pildev"]
  passthrough   = false
  inherit_tags  = true
  random_length = 3

  tags = {
    landingzone    = "management_vault_non_prod"
    level          = "level3"
    lz_maintainers = "CAF maintainers"
  }
}