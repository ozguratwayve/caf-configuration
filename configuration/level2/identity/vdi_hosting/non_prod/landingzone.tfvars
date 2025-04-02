landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "identity_level2_vdi_hosting_non_prod"
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
  }
}

resource_groups = {
  vdi_hosting_identity_non_prod = {
    name   = "vdi_hosting-identity-non_prod"
    region = "region1"
  }
}

custom_variables = {
  # prefixes      = []
  passthrough  = false
  inherit_tags = true
  # random_length = 0

  tags = {
    landingzone    = "identity_level2_vdi_hosting_non_prod"
    level          = "level2"
    lz_maintainers = "CAF maintainers"
  }
}