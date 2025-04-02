role_mapping = {
  built_in_role_mapping = {
    aks_clusters = {
      gitops_aks = {
        "Azure Kubernetes Service Cluster Admin Role" = {
          azuread_groups = {
            lz_key = "gitops_aks_identity"
            keys   = ["caf_gitops_aks_cluster_admins"]
          }
        },
        "Azure Kubernetes Service Cluster User Role" = {
          azuread_groups = {
            lz_key = "gitops_aks_identity"
            keys = [
              "caf_gitops_aks_cluster_admins",
              "caf_gitops_aks_cluster_users"
            ]
          }
        }
      }
    }
  }
}
