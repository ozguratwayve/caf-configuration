role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      management_vault_non_prod = {
        "Reader" = {
          azuread_service_principals = {
            keys = [
              "tfazure_nab_dev0",
              "tfazure_nab_perf0",
              "tfazure_nab_sit0",
              "tfazure_nab_test0"
            ]
            lz_key = "tfazure_shared_svc"
          }
        }
      }
    }
  }
}