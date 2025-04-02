keyvault_access_policies = {
  dm_kv_secrets = {
    dm_aadg_landingzone_contributors = {
      azuread_group_key       = "dm_aadg_landingzone_contributors"
      key_permissions         = ["List", "Get"]
      secret_permissions      = ["List", "Get"]
      certificate_permissions = ["List", "Get"]
      storage_permissions     = ["List", "Get"]
    }
    tfazure_pol_dev_dm = {
      azuread_service_principal_key = "tfazure_pol_dev_dm"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get", "Set"]
    }
    dm_fa_billing = {
      managed_identity_key    = "dm_fa_billing"
      certificate_permissions = ["List", "Get"]
      secret_permissions      = ["List", "Get"]
    }
  }
}