role_mapping = {
  built_in_role_mapping = {
    managed_identities = {
      shared_services_aks_kubelet_msi = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["shared_services_aks_system_msi"]
          }
        }
      }
    }
    resource_groups = {
      dns_connectivity_non_prod = {
        lz_key = "connectivity_private_dns_non_prod"
        "Private DNS Zone Contributor" = {
          azuread_groups = {
            keys = ["caf_shared_services_aks_cluster_dns_contributors"]
          }
        }
        "Reader" = {
          managed_identities = {
            keys = ["shared_services_aks_kubelet_msi"]
          }
        }
      }
    }
    networking = {
      shared_services_vnet_region1 = {
        lz_key = "connectivity_virtual_networks_shared_services_non_prod"
        "Network Contributor" = {
          managed_identities = {
            keys = ["shared_services_aks_system_msi"]
          }
        }
      }
    }
  }
}