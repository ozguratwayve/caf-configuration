
keyvaults = {
  cibc_dev_caf = {
    name               = "cibc-dev-caf-kv"
    resource_group_key = "cibc_dev_caf"
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
      caf_tfazure_landingzone_maintainers_cibc_dev = {
        object_id          = "bda34009-10d6-45af-915c-8eb8adc531c4"
        secret_permissions = ["Get", "List"]
      }
    }

  }

}