
keyvaults = {
  tfazure_shared_svc = {
    name               = "tfazureshrsvc"
    resource_group_key = "tfazure_shared_svc"
    sku_name           = "standard"
    tags = {
      caf_tfstate        = "level3"
      caf_environment    = "pildev"
      tfazure_dependency = "true"
    }

    creation_policies = {
      caf_tfazure_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_tfazure_landingzone_maintainers_non_prod"
        secret_permissions = ["Get", "List"]
      }
      level0 = {
        object_id          = "0f20c1ae-a2fc-408f-9603-5cea7293ce2d"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
