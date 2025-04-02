azuread_applications = {
  shared_services_identity_caf_spn = {
    application_name = "shared-services-identity-caf-spn"
  }
  argocd_oidc_spn = {
    useprefix        = false
    application_name = "argocd-sso"
    public_client    = false
    optional_claims = {
      access_token = {
        aud = {
          name = "groups"
        }
      }
      id_token = {
        sid = {
          name = "groups"
        }
      }
    }
    web = {
      redirect_uris = [
        "https://argocd.corp.keymatehosting.internal/auth/callback"
      ]
    }
  }
}