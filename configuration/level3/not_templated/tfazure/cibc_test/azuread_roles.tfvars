azuread_roles = {
  managed_identities = {
    cibc_test_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    cibc_test_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
