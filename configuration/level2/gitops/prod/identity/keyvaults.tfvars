keyvaults = {
  cred_gitops_aks_prod = {
    name                     = "gitops-aks-prod"
    resource_group_key       = "gitops_identity_prod"
    sku_name                 = "standard"
    purge_protection_enabled = false
    creation_policies = {
      caf_platform_maintainers = {
        object_id          = "b0cc5b4f-aadb-4824-9958-7d0567e096bf"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      gitops_aks_kubelet_msi_prod = {
        managed_identity_key = "gitops_aks_kubelet_msi_prod"
        secret_permissions   = ["Get", "List"]
      }
    }
  }
}
