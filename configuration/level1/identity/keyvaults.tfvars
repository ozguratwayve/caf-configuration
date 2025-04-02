keyvaults = {
  vault = {
    name                     = "vault-identity"
    resource_group_key       = "management"
    sku_name                 = "standard"
    purge_protection_enabled = false
    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
        key_permissions    = ["Get", "List", "Create"]
      }
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}