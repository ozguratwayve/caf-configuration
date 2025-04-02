managed_identities = {
  shared_services_aks_system_msi = {
    name               = "shared-services-aks-system-identity"
    resource_group_key = "shared_services_identity"
  }
  shared_services_aks_kubelet_msi = {
    name               = "shared-services-aks-kubelet-identity"
    resource_group_key = "shared_services_identity"
  }
}