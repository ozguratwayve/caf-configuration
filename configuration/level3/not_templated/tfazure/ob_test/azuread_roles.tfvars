azuread_roles = {
  managed_identities = {
    ob_test_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    ob_test_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
