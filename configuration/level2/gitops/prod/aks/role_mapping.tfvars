role_mapping = {
  built_in_role_mapping = {
    aks_clusters = {
      gitops_aks_prod = {
        "Azure Kubernetes Service Cluster Admin Role" = {
          azuread_groups = {
            lz_key = "gitops_aks_identity_prod"
            keys   = ["caf_gitops_aks_cluster_admins_prod"]
          }
        },
        "Azure Kubernetes Service Cluster User Role" = {
          azuread_groups = {
            lz_key = "gitops_aks_identity_prod"
            keys = [
              "caf_gitops_aks_cluster_admins_prod",
              "caf_gitops_aks_cluster_users_prod"
            ]
          }
        }
      }
    }
  }
}
