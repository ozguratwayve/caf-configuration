keyvaults = {

  hashicorp_vault = {
    name                = "hashicorp-vault"
    resource_group_key  = "management_vault_non_prod"
    sku_name            = "premium"
    soft_delete_enabled = true
    # set to true for production
    # purge_protection_enabled  = true

    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
        key_permissions    = ["Get", "List", "Create", "Update", "Recover"]
      }
    }

    network = {
      bypass         = "None" # None or AzureServices
      default_action = "Deny"
    }

    private_endpoints = {
      # Require enforce_private_link_endpoint_network_policies set to true on the subnet
      hashicorp_vault_keyvault = {
        name               = "hashicorp-vault-keyvault"
        resource_group_key = "management_vault_non_prod"
        lz_key             = "connectivity_virtual_networks_management_non_prod"
        vnet_key           = "mgmt_region1"
        subnet_key         = "private_endpoints"

        private_service_connection = {
          name                 = "hashicorp-vault-keyvault-private-link-psc"
          is_manual_connection = false
          subresource_names    = ["vault"] # use HSM for production - https://docs.microsoft.com/en-us/azure/private-link/private-endpoint-overview#private-link-resource
        }
        private_dns = {
          lz_key = "connectivity_private_dns_non_prod"
          keys   = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }

}

keyvault_keys = {
  hashicorp_vault_key = {
    name         = "hashicorp-vault-key"
    keyvault_key = "hashicorp_vault"
    key_type     = "RSA"
    key_size     = 4096
    key_opts     = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
  }
}


keyvault_access_policies = {
  # A maximum of 16 access policies per keyvault
  hashicorp_vault = {
    aks_kubelet_msi = {
      lz_key               = "identity_level2_management_non_prod"
      managed_identity_key = "aks_kubelet_msi"
      key_permissions      = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"]
    }
    tfazure_gitops = { # Should not be needed but some environments (like tf-cibc-dev service connection) is still using it
      azuread_service_principal_key = "tfazure_gitops"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get"]
    }
    tfazure_nab_dev0 = {
      azuread_service_principal_key = "tfazure_nab_dev0"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get"]
    }
    tfazure_nab_perf0 = {
      azuread_service_principal_key = "tfazure_nab_perf0"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get"]
    }
    tfazure_nab_sit0 = {
      azuread_service_principal_key = "tfazure_nab_sit0"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get"]
    }
    tfazure_nab_test0 = {
      azuread_service_principal_key = "tfazure_nab_test0"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get"]
    }
  }
}
