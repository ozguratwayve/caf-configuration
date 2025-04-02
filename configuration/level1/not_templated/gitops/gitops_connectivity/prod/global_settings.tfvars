# Global Settings / Custom Variables: Do NOT change these values.
global_settings = {}

# Bug: https://github.com/Azure/caf-terraform-landingzones/issues/403
custom_variables = {
  prefixes      = ["prod", "caf"]
  use_slug      = true
  inherit_tags  = false
  passthrough   = false
  random_length = 3

  default_region = "region1"
  regions = {
    region1 = "uksouth"
    region2 = "ukwest"
  }

  tags = {
    landingzone       = "gitops_connectivity_prod"
    technical_contact = "devsecops@keymate.co.uk"
    cost_centre       = "TEC"
    cost_code         = "5202"
  }
}