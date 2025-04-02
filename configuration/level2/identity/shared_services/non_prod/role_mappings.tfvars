role_mapping = {
  built_in_role_mapping = {
    managed_identities = {
      aks_kubelet_msi = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["aks_system_msi"]
          }
        }
      }
    }
  }
}