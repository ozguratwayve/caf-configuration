azuread_roles = {
  managed_identities = {
    nab_dev0_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    nab_dev0_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
