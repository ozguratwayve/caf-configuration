role_mapping = {
  built_in_role_mapping = {
    managed_identities = {
      vdi_hosting_privileged_msi = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["vdi_hosting_privileged_msi"]
          }
        }
      }
      vdi_hosting_non_privileged_msi = {
        "Managed Identity Operator" = {
          managed_identities = {
            keys = ["vdi_hosting_non_privileged_msi"]
          }
        }
      }
    }
  }
}
