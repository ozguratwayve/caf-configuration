managed_identities = {
  gitops_aks_system_msi_prod = {
    name               = "gitops-aks-system-prod"
    resource_group_key = "gitops_identity_prod"
  }
  gitops_aks_kubelet_msi_prod = {
    name               = "gitops-aks-kubelet-prod"
    resource_group_key = "gitops_identity_prod"
  }
}
