landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "tfazure_shared_svc_prod"
  tfstates = {
    connectivity_private_dns_firewalls_prod = {
      tfstate = "connectivity_private_dns_firewalls_prod.tfstate"
      level   = "lower"
    }
    gitops_aks_identity_prod = {
      tfstate = "gitops_aks_identity_prod.tfstate"
      level   = "lower"
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
    lz_maintainers = "Shared Service Prod maintainers"
  }
}
