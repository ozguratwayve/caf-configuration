
keyvaults = {
  vdi_solution_kv = {
    name               = "vdisecretskv"
    resource_group_key = "vdi_solution"
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

