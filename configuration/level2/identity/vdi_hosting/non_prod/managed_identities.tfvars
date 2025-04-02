managed_identities = {
  vdi_hosting_privileged_msi = {
    name               = "vdi-hosting-privileged-nonprod"
    resource_group_key = "vdi_hosting_identity_non_prod"
  }
  vdi_hosting_non_privileged_msi = {
    name               = "vdi-hosting-non-privileged-nonprod"
    resource_group_key = "vdi_hosting_identity_non_prod"
  }
}