azuread_roles = {
  azuread_service_principals = {
    tfazure_sre_sbox = {
      roles = [
        "Directory Readers"
      ]
    }
  }
  managed_identities = {
    sre_sbox_sql_identity = {
      roles = [
        "Directory Readers"
      ]
    }
    sre_sbox_aks_identity = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}
