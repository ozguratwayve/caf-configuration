azuread_apps = {
  hashicorp_vault_app = {
    useprefix        = true
    application_name = "hashicorp-vault"
    password_policy = {
      length         = 250
      special        = false
      upper          = true
      number         = true
      expire_in_days = 365
      rotation = {
        months = 11
      }
    }
    sign_in_audience        = "AzureADMyOrg"
    prevent_duplicate_names = true
    group_membership_claims = ["All"]
    reply_urls = [
      "https://vault.keymatehosting.internal:8200/ui/vault/auth/oidc/oidc/callback",
      "https://vault.keymatehosting.internal:8250/oidc/callback",
      "http://localhost:8250/oidc/callback"
    ]
    keyvaults = {
      hashicorp_vault = {
        lz_key        = "management_vault_non_prod"
        secret_prefix = "hashicorp-vault"
      }
    }
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
      implicit_grant = {
        access_token_issuance_enabled = false
        id_token_issuance_enabled     = false
      }
    }
  }
}
