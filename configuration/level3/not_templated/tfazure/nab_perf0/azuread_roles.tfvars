azuread_roles = {
  managed_identities = {
    nab_perf0_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    nab_perf0_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
