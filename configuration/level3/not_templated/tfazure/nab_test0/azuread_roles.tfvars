azuread_roles = {
  managed_identities = {
    nab_test0_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    nab_test0_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
