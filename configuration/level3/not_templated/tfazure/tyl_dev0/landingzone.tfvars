landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "tyl_dev0"
  tfstates = {
    identity_level2_non_prod = {
      tfstate = "identity_level2_non_prod.tfstate"
      level   = "lower"
    }
    tfazure_shared_svc = {
      tfstate = "tfazure_shared_svc.tfstate"
      level   = "current"
    }
  }
}

# Workaround hack to be replaced with global_settings once PR has been approved and merged by the community (https://github.com/Azure/caf-terraform-landingzones/pull/402)
#$tenant{6}-$lzname{10}-resource_name{az_defined}-$random_length(optional)
#eg:
#- pildev-cibcdev-kv-name-xyz
#- pildev-dmeshdev-kvname-abc

custom_variables = {
  prefixes      = []
  passthrough   = true
  inherit_tags  = true
  random_length = 0
  tags = {
    lz_maintainers = "Caf maintainers"
  }
}
