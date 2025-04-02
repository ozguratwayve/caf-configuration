managed_identities = {
  aks_system_msi = {
    name               = "management-nonprod-aks-system"
    resource_group_key = "management_identity_non_prod"
  }
  aks_kubelet_msi = {
    name               = "management-nonprod-aks-kubelet"
    resource_group_key = "management_identity_non_prod"
  }
}