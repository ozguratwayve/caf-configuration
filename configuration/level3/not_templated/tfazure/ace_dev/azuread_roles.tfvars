azuread_roles = {
  azuread_service_principals = {
    tfazure_ace_dev = {
      roles = [
        "Directory Readers"
      ]
    }
  }
  managed_identities = {
    ace_dev_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    ace_dev_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
