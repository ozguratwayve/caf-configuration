azuread_credentials = {
  shared_services_identity_caf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "shared_services_identity_credentials_policy"
    azuread_application = {
      key = "shared_services_identity_caf_spn"
    }
    keyvaults = {
      shared_services_identity_caf = {
        secret_prefix = "shared-services-identity-caf-spn"
      }
    }
  }
  argocd_oidc_spn = {
    type                          = "password"
    azuread_credential_policy_key = "shared_services_identity_credentials_policy"
    azuread_application = {
      key = "argocd_oidc_spn"
    }
    keyvaults = {
      shared_services_identity_caf = {
        secret_prefix = "shared-services-argocd-identity-caf-spn"
      }
    }
  }
}



