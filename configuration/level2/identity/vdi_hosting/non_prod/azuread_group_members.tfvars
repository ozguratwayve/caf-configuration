azuread_groups_membership = {
  caf_non_prod_landingzones_dns_contributors = { # ad group key
    managed_identities = {
      vdi_hosting_privileged = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["vdi_hosting_privileged_msi"]
      }
       vdi_hosting_non_privileged = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["vdi_hosting_non_privileged_msi"]
      }
    }
  }
}