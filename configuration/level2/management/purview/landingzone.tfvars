landingzone = {
  backend_type = "azurerm"
  level        = "level2"
  key          = "management_purview"
  tfstates = {
    connectivity_virtual_networks_data_management = {
      tfstate = "connectivity_virtual_networks_data_management.tfstate"
      level   = "current"
    }
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "current"
    }
    identity = {
      tfstate = "identity.tfstate"
      level   = "lower"
    }
  }
}

resource_groups = {
  management_purview = {
    name   = "management-purview"
    region = "region1"
  }
}


# Unable to add tag only to a specific landing zone
global_settings = {}

# Bug: https://github.com/Azure/caf-terraform-landingzones/issues/403
custom_variables = {
  prefixes      = ["pil", "dev"]
  use_slug      = true
  inherit_tags  = true
  passthrough   = false
  random_length = 0

  default_region = "region1"
  regions = {
    region1 = "uksouth"
    region2 = "ukwest"
  }

  tags = {
    project        = "Microsoft Purview"
    landingzone    = "management_purview"
    project-owners = "Carlotta Greci  || Mark Tefula"
    lz_maintainers = "CAF Mantainers"
    documentation  = "https://keymateonline.atlassian.net/wiki/spaces/DATA/pages/880804032/Microsoft+Purview"
  }
}