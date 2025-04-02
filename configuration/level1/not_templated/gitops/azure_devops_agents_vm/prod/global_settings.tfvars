# Global Settings / Custom Variables: Do NOT change these values.
global_settings = {}

# Bug: https://github.com/Azure/caf-terraform-landingzones/issues/403
custom_variables = {
  prefixes      = ["prod", "caf"]
  use_slug      = true
  inherit_tags  = true
  passthrough   = false
  random_length = 3

  default_region = "region1"
  regions = {
    region1 = "uksouth"
    region2 = "ukwest"
  }

  tags = {
    landingzone       = "azdo_agents_vm_prod"
    environment       = "production"
    technical_contact = "devsecops@keymate.co.uk"
    cost_centre       = "TEC"
    cost_code         = "5202"
  }
}