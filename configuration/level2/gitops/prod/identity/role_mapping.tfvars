# To be deployed prior to AKS cluster as AKS CAF module does not depend_on on rbac
role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      dns_connectivity_prod = {
        lz_key = "connectivity_private_dns_prod"
        "Private DNS Zone Contributor" = {
          azuread_groups = {
            keys = ["caf_gitops_aks_cluster_dns_contributors_prod"]
          }
        }
      }
    }
    networking = {
      aks_devops_region1_prod = {
        lz_key = "gitops_virtual_networks_prod"
        "Network Contributor" = {
          managed_identities = {
            keys = ["gitops_aks_system_msi_prod"]
          }
        }
      }
    }
    managed_identities = {
      gitops_aks_kubelet_msi_prod = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["gitops_aks_system_msi_prod"]
          }
        }
      }
    }
  }
}
