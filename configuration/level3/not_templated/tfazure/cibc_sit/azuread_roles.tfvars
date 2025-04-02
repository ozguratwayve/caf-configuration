azuread_roles = {
  managed_identities = {
    cibc_sit_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    cibc_sit_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
