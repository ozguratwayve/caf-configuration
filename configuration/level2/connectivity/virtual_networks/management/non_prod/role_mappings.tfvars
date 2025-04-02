role_mapping = {
  built_in_role_mapping = {
    networking = {
      mgmt_region1 = {
        "Network Contributor" = {
          managed_identities = {
            lz_key = "identity_level2_management_non_prod"
            keys   = ["aks_system_msi"]
          }
        }
      }
    }
  }
}