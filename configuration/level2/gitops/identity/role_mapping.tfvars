# To be deployed prior to AKS cluster as AKS CAF module does not depend_on on rbac
role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      dns_connectivity_non_prod = {
        lz_key = "connectivity_private_dns_non_prod"
        "Private DNS Zone Contributor" = {
          azuread_groups = {
            keys = ["caf_gitops_aks_cluster_dns_contributors"]
          }
        }
      }
    }
    networking = {
      aks_devops_region1 = {
        lz_key = "gitops_virtual_networks"
        "Network Contributor" = {
          managed_identities = {
            keys = ["gitops_aks_system_msi"]
          }
        }
      }
    }
    managed_identities = {
      gitops_aks_kubelet_msi = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["gitops_aks_system_msi"]
          }
        }
      }
    }
  }
}
