
keyvaults = {
  cibc_test_caf = {
    name               = "cibc-test-caf-kv"
    resource_group_key = "cibc_test_caf"
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
        object_id          = "72f8df58-8259-411c-95df-cbb5b5227db4"
        secret_permissions = ["Get", "List"]
      }
      caf_tfazure_landingzone_maintainers_cibc_test = {
        object_id          = "26de71bc-bc88-4f26-82bb-88e34be1db2b"
        secret_permissions = ["Get", "List"]
      }
    }

  }

}
