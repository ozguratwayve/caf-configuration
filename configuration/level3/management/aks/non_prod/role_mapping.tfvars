role_mapping = {
  built_in_role_mapping = {
    aks_clusters = {
      management_aks = {
        "Azure Kubernetes Service Cluster Admin Role" = {
          azuread_groups = {
            lz_key = "identity_level2_management_non_prod"
            keys   = ["caf_non_prod_management_aks_cluster_admins"]
          }
        }
        "Azure Kubernetes Service Cluster User Role" = {
          azuread_groups = {
            lz_key = "identity_level2_management_non_prod"
            keys   = [
              "caf_non_prod_management_aks_cluster_admins",
              "caf_non_prod_management_aks_cluster_users"
              ]
          }
        }
      }
    }
  }
}