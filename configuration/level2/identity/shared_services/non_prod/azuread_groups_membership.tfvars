azuread_groups_membership = {
  caf_non_prod_shared_services_aks_cluster_admins = { # ad group key
    managed_identities = {
      gitops_aks_kubelet_msi = {
        lz_key = "gitops_aks_identity"
        keys   = ["gitops_aks_kubelet_msi"]
      }
    }
  }
  caf_non_prod_shared_services_aks_cluster_dns_contributors = { # ad group key
    managed_identities = {
      mi_1 = {
        keys = ["aks_system_msi"]
      }
    }
  }
}