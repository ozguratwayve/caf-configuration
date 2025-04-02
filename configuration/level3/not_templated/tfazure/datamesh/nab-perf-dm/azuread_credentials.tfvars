azuread_credentials = {
  # TODO: Unavailable in CAF 5.5.5
  # dm_aada_databricks_ad_sync = {
  #   type                          = "password"
  #   azuread_credential_policy_key = "default_policy"

  #   azuread_application = {
  #     key = "dm_aada_databricks_ad_sync"
  #   }

  #   keyvaults = {
  #     dm_kv_secrets = {
  #       secret_prefix = "dm-aada-databricks-ad-sync"
  #     }
  #   }
  # }
  dm_aada_superset_aad_sync = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"

    azuread_application = {
      key = "dm_aada_superset_aad_sync"
    }

    keyvaults = {
      dm_kv_secrets = {
        secret_prefix = "aada-superset-aad-sync"
      }
    }
  }
}