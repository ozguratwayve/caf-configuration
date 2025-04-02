landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "vdi_hosting_corp"
  global_settings_key = "identity_level2_vdi_hosting_non_prod"
  tfstates = {
    identity_level2_vdi_hosting_non_prod = {
      tfstate   = "identity_level2_vdi_hosting_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}

resource_groups = {
 vdi_hosting_corp = {
    name   = "vdi_hosting_corp"
    region = "region1"
  }
}

custom_variables = {
  # prefixes      = []
  passthrough  = false
  inherit_tags = true
  # random_length = 0

  tags = {
    landingzone    = "vdi_hosting_corp"
    level          = "level3"
    lz_maintainers = "CAF maintainers"
  }
}