azuread_credentials = {
  tfazure_prod_gitops = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_prod_gitops"

    azuread_application = {
      key = "tfazure_prod_gitops"
    }
    keyvaults = {
      tfazure_shared_svc_prod = {
        secret_prefix = "sharedsvcprod"
      }
    }
  }
  tfazure_pol_prod_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_prod_gitops"

    azuread_application = {
      key = "tfazure_pol_prod_dm"
    }
    keyvaults = {
      tfazure_shared_svc_prod = {
        secret_prefix = "pol-prod-dm"
      }
    }
  }

}