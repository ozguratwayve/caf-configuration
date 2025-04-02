keyvault_access_policies = {
  dm_kv_secrets = {
    dm_aadg_landingzone_contributors = {
      azuread_group_key       = "dm_aadg_landingzone_contributors"
      key_permissions         = ["List", "Get"]
      secret_permissions      = ["List", "Get"]
      certificate_permissions = ["List", "Get"]
      storage_permissions     = ["List", "Get"]
    }
    tfazure_nwb_test_dm = {
      azuread_service_principal_key = "tfazure_nwb_test_dm"
      lz_key                        = "tfazure_shared_svc"
      secret_permissions            = ["List", "Get", "Set"]
    }
  }
}