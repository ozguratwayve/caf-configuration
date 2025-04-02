
keyvaults = {
  sre_sbox_caf = {
    name               = "sre-sbox-caf-kv"
    resource_group_key = "sre_sbox_caf"
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
      caf_tfazure_landingzone_maintainers_sre_sbox = {
        azuread_group_key  = "caf_tfazure_landingzone_maintainers_sre_sbox"
        secret_permissions = ["Get", "List"]
      }
    }

  }

}