azuread_roles = {
  managed_identities = {
    cibc_dev_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    cibc_dev_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
