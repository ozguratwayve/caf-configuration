keyvault_access_policies = {
  tfazure_shared_svc = {
    caf_tfazure_integration_spns = {
      azuread_group_key  = "caf_tfazure_integration_spns"
      lz_key             = "tfazure_shared_svc"
      secret_permissions = ["Get", "List"]
    }
  }
}
