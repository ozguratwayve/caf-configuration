azuread_roles = {
  tfazure_prod_gitops = {
    roles = [
      "Directory Readers"
      # "User Administrator",
      # "Application Administrator",
      # "Groups Administrator"
    ]
  }
  azuread_service_principals = {
    tfazure_pol_prod_dm = {
      roles = [
        "Directory Readers"
      ]
    }
  }
}