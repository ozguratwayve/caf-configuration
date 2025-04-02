azuread_roles = {
  managed_identities = {
    nab_sit0_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    nab_sit0_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
