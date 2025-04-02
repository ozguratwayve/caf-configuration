app_service_plans = {
  dm_asp_billing = {
    name               = "billing"
    resource_group_key = "dm_rg_aks"
    keyvault_key       = "dm_kv_secrets"
    region             = "region1"
    kind               = "Linux"
    reserved           = true

    sku = {
      tier = "Basic"
      size = "B1"
    }
  }
}

function_apps = {
  dm_fa_billing = {
    name                 = "billing"
    resource_group_key   = "dm_rg_aks"
    region               = "region1"
    app_service_plan_key = "dm_asp_billing"
    storage_account_key  = "dm_sa_billing"
    identity = {
      type                  = "UserAssigned"
      managed_identity_keys = ["dm_fa_billing"]
    }

    app_settings = {
      BUILD_FLAGS                                  = "UseExpressBuild"
      ENABLE_ORYX_BUILD                            = "true"
      SCM_DO_BUILD_DURING_DEPLOYMENT               = "1"
      XDG_CACHE_HOME                               = "/tmp/.cache"
      FUNCTIONS_WORKER_RUNTIME                     = "python"
      DATAMESH_BILLING_REPORT_SHAREPOINT_SITE      = "https://keymateonline.sharepoint.com/sites/non-prod-datamesh/"
      DATAMESH_BILLING_REPORT_SHAREPOINT_LOCATION  = "sites/non-prod-datamesh/poldevdm"
      DATAMESH_BILLING_REPORT_SHAREPOINT_CLIENT_ID = "db388512-e4fa-4ab0-83a2-b9636323393"
      minTlsVersion                                = "1.2"
      FUNCTIONS_EXTENSION_VERSION                  = "~4"

    }
    settings = {
      vnet_key   = "dm_vnet_core"
      subnet_key = "dm_snet_core_function_apps"
      site_config = {
        min_tls_version  = "1.2"
        always_on        = "true"
        linux_fx_version = "PYTHON|3.9"
      }
      version    = "~4"
      https_only = "true"
      os_type    = "linux"
    }

    dynamic_app_settings = {
      "DATAMESH_BILLING_REPORT_VAULT_URI" = {
        keyvaults = {
          dm_kv_secrets = {
            attribute_key = "vault_uri"
          }
        }
      }
      "MSI_CLIENT_ID" = {
        managed_identities = {
          dm_fa_billing = {
            attribute_key = "client_id"
          }
        }
      }
      # Should not be needed if Azure function connect with MSI and Azure RBAC
      #"DATAMESH_BILLING_REPORT_ADLS_CONNECTION_STRING" = {
      #  storage_accounts = {
      #    dm_sa_reporting = {
      #      attribute_key = "primary_blob_connection_string"
      #    }
      #  }
      #}
      "DATAMESH_BILLING_REPORT_ADLS_STORAGE_ACCOUNT" = {
        storage_accounts = {
          dm_sa_reporting = {
            attribute_key = "name"
          }
        }
      }
    }
  }
}