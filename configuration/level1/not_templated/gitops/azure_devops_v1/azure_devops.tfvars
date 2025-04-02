azure_devops = {

  url = "https://dev.azure.com/keymatedev/"

  # PAT Token should be updated manually to the keyvault after running launchpad
  pats = {
    admin = {
      secret_name  = "azdo-pat-admin-keymatedev" # created in lauchpad under dynamic secrets tfvars
      lz_key       = "launchpad_credentials"
      keyvault_key = "cred_gitops"
    }
  }
}

