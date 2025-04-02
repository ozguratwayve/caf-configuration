
keyvaults = {
  loupe_prod_caf = {
    name               = "loupe-prod-caf-kv"
    resource_group_key = "loupe_prod_caf"
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
      caf_tfazure_landingzone_maintainers_prod = {
        object_id          = "72f8df58-8259-411c-95df-cbb5b5227db4"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_tfazure_landingzone_maintainers_loupe_prod = {
        object_id          = "a6e8c680-3c12-4d49-9639-906a65c21993"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
