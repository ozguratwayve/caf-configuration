keyvaults = {
  shared_services_kv_secrets = {
    name                            = "shared-services"
    resource_group_key              = "shared_services_rg"
    sku_name                        = "standard"
    soft_delete_enabled             = true
    soft_delete_retention_days      = 90
    purge_protection_enabled        = false
    enabled_for_deployment          = false
    enabled_for_template_deployment = false
    public_network_access_enabled   = false

    creation_policies = {
      logged_in_aad_app = {
        key_permissions         = ["List", "Get", "Delete", "Purge", "Recover"]
        secret_permissions      = ["List", "Get", "Set", "Delete", "Purge", "Recover"]
        certificate_permissions = ["List", "Get", "Delete", "Purge", "Recover", "Import", "ManageContacts"]
        storage_permissions     = ["List", "Get", "Delete", "Purge", "Recover"]
      }
      caf_shared_services_maintainers = {
        azuread_group_key  = "caf_shared_services_maintainers"
        lz_key             = "shared_services_identity"
        secret_permissions = ["List", "Get", "Set"]
      }
    }

    private_endpoints = {
      shared_services_kv_secrets = {
        name               = "kv-secrets"
        vnet_key           = "shared_services_vnet_region1"
        lz_key             = "connectivity_virtual_networks_shared_services_non_prod"
        subnet_key         = "private_endpoints"
        resource_group_key = "shared_services_rg"

        private_service_connection = {
          name                 = "shared-services-kv-secrets"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }

        private_dns = {
          keys   = ["privatelink.vaultcore.azure.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }
      }
    }
  }
}