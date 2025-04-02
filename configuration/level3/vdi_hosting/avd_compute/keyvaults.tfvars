
keyvaults = {
  avd_vm_kv = {
    name               = "vmsecretskv"
    resource_group_key = "avd_compute"
    sku_name           = "standard"
    tags = {
      env = "Standalone"
    }
    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}

