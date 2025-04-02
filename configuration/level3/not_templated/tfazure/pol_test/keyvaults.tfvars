
keyvaults = {
  pol_test_caf = {
    name               = "pol-test-caf-kv"
    resource_group_key = "pol_test_caf"
    sku_name           = "standard"
    tags = {
      caf_tfstate        = "level3"
      caf_environment    = "pildev"
      tfazure_dependency = "true"
    }

    creation_policies = {
      level0 = {
        object_id          = "0f20c1ae-a2fc-408f-9603-5cea7293ce2d"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_tfazure_landingzone_maintainers_non_prod = {
        lz_key             = "tfazure_shared_svc"
        azuread_group_key  = "caf_tfazure_landingzone_maintainers_non_prod"
        secret_permissions = ["Get", "List"]
      }
      caf_tfazure_landingzone_maintainers_pol_test = {
        lz_key             = "tfazure_shared_svc"
        azuread_group_key  = "caf_tfazure_landingzone_maintainers_pol_test"
        secret_permissions = ["Get", "List"]
      }
    }

  }

}