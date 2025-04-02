keyvaults = {
  shared_services_identity_caf = {
    name                     = "shared-services-identity"
    resource_group_key       = "shared_services_identity"
    sku_name                 = "standard"
    purge_protection_enabled = false
    creation_policies = {
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}
