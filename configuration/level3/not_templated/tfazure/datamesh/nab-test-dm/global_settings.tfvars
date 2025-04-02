# Global Settings / Custom Variables: Do NOT change these values.
global_settings = {}

# Bug: https://github.com/Azure/caf-terraform-landingzones/issues/403
custom_variables = {
  prefixes      = ["nab", "test-dm"]
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
    project          = "datamesh"
    landingzone      = "nab-test-dm"
    project-owners   = "pascal jerome | negar nassirpour"
    technical-owners = "platformengineering@keymate.co.uk"
  }
}