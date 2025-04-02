role_mapping = {
  built_in_role_mapping = {
    aks_clusters = {
      shared_services_aks = {
        "Azure Kubernetes Service Cluster Admin Role" = {
          azuread_groups = {
            lz_key = "shared_services_identity"
            keys   = ["caf_shared_services_aks_cluster_admins"]
          }
        }
        "Azure Kubernetes Service Cluster User Role" = {
          azuread_groups = {
            lz_key = "shared_services_identity"
            keys = [
              "caf_shared_services_aks_cluster_admins",
              "caf_shared_services_aks_cluster_users"
            ]
          }
        }
      }
    }
  }
}