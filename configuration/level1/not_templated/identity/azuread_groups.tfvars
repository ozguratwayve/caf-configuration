azuread_groups = {
  # USER groups ##########################################################################

  # User security groups and associated user memberships created by IT under the 'IT' administrative unit in Azure AD.
  # Until this PR is avaiable in the next released https://github.com/aztfmod/terraform-azurerm-caf/pull/1072.



  # SYSTEM groups ##########################################################################
  caf_eslz_root_readers = {
    name   = "caf-eslz-root-readers"
    owners = ["f2ab61fe-d255-475a-ba24-43b7ff58e4d7", "34a9886f-b60d-4a34-9377-edbd369728b3"] # William Cheung, Antony Lehmann

    prevent_duplicate_name = true
  }
  caf_eslz_landing_zones_readers = {
    name   = "caf-eslz-landing-zones-readers"
    owners = ["f2ab61fe-d255-475a-ba24-43b7ff58e4d7", "34a9886f-b60d-4a34-9377-edbd369728b3"] # William Cheung, Antony Lehmann

    prevent_duplicate_name = true
  }
}
