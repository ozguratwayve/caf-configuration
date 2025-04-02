azuread_groups = {
  gitops = {
    name                   = "caf-gitops"
    owners                 = ["f2ab61fe-d255-475a-ba24-43b7ff58e4d7"]
    prevent_duplicate_name = true
    members = {
      azuread_service_principal_keys = ["gitops"]
    }
  }
}
