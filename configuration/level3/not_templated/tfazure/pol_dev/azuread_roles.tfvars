azuread_roles = {
  managed_identities = {
    pol_dev_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    pol_dev_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
