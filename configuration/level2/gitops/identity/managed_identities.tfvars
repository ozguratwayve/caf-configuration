managed_identities = {
  gitops_aks_system_msi = {
    name               = "gitops-aks-system"
    resource_group_key = "gitops_identity"
  }
  gitops_aks_kubelet_msi = {
    name               = "gitops-aks-kubelet"
    resource_group_key = "gitops_identity"
  }
}
