azuread_service_principals = {
  shared_services_identity_caf_spn = {
    azuread_application = {
      key = "shared_services_identity_caf_spn"
    }
  }
  argocd_oidc_spn = {
    azuread_application = {
      key = "argocd_oidc_spn"
    }
  }
}
