keyvaults = {
  cred_gitops_aks = {
    name                     = "gitops-aks"
    resource_group_key       = "gitops_identity"
    sku_name                 = "standard"
    purge_protection_enabled = false
    creation_policies = {
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      gitops_aks_kubelet_msi = {
        managed_identity_key = "gitops_aks_kubelet_msi"
        secret_permissions   = ["Get", "List"]
      }
    }
  }
}
