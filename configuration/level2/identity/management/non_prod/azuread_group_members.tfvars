azuread_groups_membership = {
  caf_non_prod_management_aks_cluster_admins = { # ad group key
    azuread_service_principals = {
      app_1 = {
        lz_key = "identity"
        keys   = ["vault_sp"]
      }
    }
    managed_identities = {
      gitops_aks_kubelet_msi = {
        lz_key = "gitops_aks_identity"
        keys   = ["gitops_aks_kubelet_msi"]
      }
    }
  }
  caf_non_prod_landingzones_dns_contributors = { # ad group key
    managed_identities = {
      mi_1 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["aks_system_msi"]
      }
    }
  }
}