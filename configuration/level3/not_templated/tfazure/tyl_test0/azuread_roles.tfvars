azuread_roles = {
  managed_identities = {
    tyl_test0_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    tyl_test0_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
