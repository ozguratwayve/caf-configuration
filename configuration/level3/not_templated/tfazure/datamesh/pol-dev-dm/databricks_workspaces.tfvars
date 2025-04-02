databricks_workspaces = {
  dm_adbw_core_nscc = {
    name                                  = "core-nscc"
    resource_group_key                    = "dm_rg_analytics"
    managed_resource_group_name           = "pol-dev-dm-rg-analytics-core-auto"
    sku                                   = "premium"
    infrastructure_encryption_enabled     = false
    public_network_access_enabled         = true
    network_security_group_rules_required = "AllRules"
    customer_managed_key_enabled          = false

    custom_parameters = {
      no_public_ip             = false
      vnet_key                 = "dm_vnet_core"
      public_subnet_key        = "dm_snet_core_databricks_pub"
      private_subnet_key       = "dm_snet_core_databricks_pri"
      storage_account_name     = "poldevdmcorenscc"
      storage_account_sku_name = "Standard_LRS"
    }
  }
}