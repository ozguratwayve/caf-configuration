azuread_roles = {
  managed_identities = {
    tyl_dev0_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    tyl_dev0_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
