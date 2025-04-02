azuread_groups_membership = {
  caf_shared_services_aks_cluster_admins = { # ad group key
    managed_identities = {
      shared_services_aks_kubelet_msi = {
        keys = ["shared_services_aks_kubelet_msi"]
      }
    }
    azuread_service_principals = {
      app_1 = {
        keys = ["shared_services_identity_caf_spn"]
      }
    }
  }
  caf_shared_services_aks_cluster_dns_contributors = { # ad group key
    managed_identities = {
      mi_1 = {
        keys = [
          "shared_services_aks_system_msi", # Used by Kubernetes to create DNS record
          "shared_services_aks_kubelet_msi" # Used by level4/external-dns to create DNS record
        ]
      }
    }
  }
}