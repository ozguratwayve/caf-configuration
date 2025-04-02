azure_devops = {

  url = "https://dev.azure.com/keymatedev/"

  # PAT Token should be updated manually to the keyvault after running launchpad
  pats = {
    admin = {
      secret_name  = "azdo-pat-admin-keymatedev"
      lz_key       = "gitops_aks_identity"
      keyvault_key = "cred_gitops_aks"
    }
  }
}
