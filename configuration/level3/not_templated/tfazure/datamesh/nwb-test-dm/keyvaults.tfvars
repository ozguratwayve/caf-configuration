keyvaults = {
  dm_kv_secrets = {
    name                            = "secrets"
    resource_group_key              = "dm_rg_security"
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
    }

    network = {
      bypass         = "None"
      default_action = "Deny"
    }

    private_endpoints = {
      dm_pe_kv_secrets = {
        name               = "kv-secrets"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_kv_pri"
        resource_group_key = "dm_rg_networking"

        private_service_connection = {
          name                 = "dm-plnkconn-kv-secrets"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }

        private_dns = {
          keys   = ["privatelink.vaultcore.azure.net"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-test-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }

    contacts = {
      security = {
        email = "security@keymate.co.uk"
        name  = "keymate Security Team"
      }
      itsupport = {
        email = "it_support@keymate.co.uk"
        name  = "keymate IT Support"
      }
    }

    tags = {
      project          = "datamesh"
      landingzone      = "nwb-test-dm"
      project-owners   = "pascal jerome | negar nassirpour"
      technical-owners = "platformengineering@keymate.co.uk"
    }
  }
}