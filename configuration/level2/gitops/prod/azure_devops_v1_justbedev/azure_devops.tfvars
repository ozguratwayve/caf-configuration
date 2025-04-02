azure_devops = {

  url = "https://dev.azure.com/albumeradev/"

  # PAT Token should be updated manually to the keyvault after running launchpad
  pats = {
    admin = {
      secret_name  = "azdo-pat-admin-albumeradev"
      lz_key       = "gitops_aks_identity_prod"
      keyvault_key = "cred_gitops_aks_prod"
    }
  }
}
