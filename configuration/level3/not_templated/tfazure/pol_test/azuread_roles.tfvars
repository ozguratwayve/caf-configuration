azuread_roles = {
  managed_identities = {
    pol_test_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    pol_test_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
