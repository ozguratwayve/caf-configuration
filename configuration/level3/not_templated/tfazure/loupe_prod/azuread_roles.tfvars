azuread_roles = {
  azuread_service_principals = {
    tfazure_loupe_prod = {
      roles = [
        "Directory Readers"
      ]
    }
  }
  managed_identities = {
    loupe_prod_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    loupe_prod_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
