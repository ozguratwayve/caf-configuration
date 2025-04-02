azuread_groups_membership = {
  caf_gitops_aks_cluster_admins_prod = { # ad group key
    managed_identities = {
      mi_1 = {
        keys = ["gitops_aks_system_msi_prod"]
      }
      mi_2 = {
        lz_key = "azdo_agents_vm_prod"
        keys   = ["level3"] # Level3 MSI is used to deploy on this AKS
      }
    }
  }
  caf_gitops_aks_cluster_dns_contributors_prod = { # ad group key
    managed_identities = {
      mi_1 = {
        keys = ["gitops_aks_system_msi_prod"]
      }
    }
  }
}
