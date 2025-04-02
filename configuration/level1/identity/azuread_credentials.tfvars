azuread_credentials = {
  vault_cred = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      key = "vault_app"
    }
    keyvaults = {
      vault = {
        secret_prefix = "sp"
      }
    }
  }

}