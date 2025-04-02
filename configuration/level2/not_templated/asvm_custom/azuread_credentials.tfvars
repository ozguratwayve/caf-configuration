azuread_credentials = {
  asvm-sp = {
    type                          = "password"
    azuread_credential_policy_key = "asvm-sp"

    azuread_application = {
      key = "asvm-sp"
    }
  }
}
