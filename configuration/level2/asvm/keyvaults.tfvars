
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "pildev"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "0fb7555a-9347-4686-af4c-efe01cb34134"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "0f20c1ae-a2fc-408f-9603-5cea7293ce2d"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_vault = {
        lz_key             = "identity"
        azuread_group_key  = "caf_vault"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "pildev"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "0fb7555a-9347-4686-af4c-efe01cb34134"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "0f20c1ae-a2fc-408f-9603-5cea7293ce2d"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_vault = {
        lz_key             = "identity"
        azuread_group_key  = "caf_vault"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
