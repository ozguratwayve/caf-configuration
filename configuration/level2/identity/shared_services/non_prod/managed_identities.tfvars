managed_identities = {
  aks_system_msi = {
    name               = "shared_services_nonprod_aks_system"
    resource_group_key = "shared_services_identity_non_prod"
  }
  aks_kubelet_msi = {
    name               = "shared_services_nonprod_aks_kubelet"
    resource_group_key = "shared_services_identity_non_prod"
  }
}