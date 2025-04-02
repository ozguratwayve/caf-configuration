role_mapping = {
  built_in_role_mapping = {
    networking = {
      vdi_hosting_privileged = {
        "Network Contributor" = {
          managed_identities = {
            lz_key = "identity_level2_vdi_hosting_non_prod"
            keys   = ["vdi_hosting_privileged_msi"]
          }
        }
      }
    }
  }
}