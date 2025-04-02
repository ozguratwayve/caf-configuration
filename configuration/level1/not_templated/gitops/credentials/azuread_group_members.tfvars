azuread_groups_membership = {
  caf_platform_maintainers = {
    managed_identities = {
      gitops_msi = {
        group_lz_key = "launchpad"
        lz_key       = "azdo-agent-levels"
        keys         = ["level0", "level1", "level2", "level3", "level4"]
      }
    }
  }
}