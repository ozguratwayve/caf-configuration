azuread_groups_membership = {
  caf_eslz_landing_zones_readers = {
    members = {
      group_names = [
        "RBAC_Security_team",
        "RBAC_Engineering_Team",
        "RBAC_Platform_Engineering_Team",
        "RBAC_QA_Team",
        "RBAC_SM_Team",
        "RBAC_PMO_Team"
      ]
    }
  }
  alz = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "launchpad"
        lz_key       = "azdo_agents_vm_prod"
        keys         = ["level0", "level1", "level2", "level3", "level4"]
      }
    }
  }
  identity = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "launchpad"
        lz_key       = "azdo_agents_vm_prod"
        keys         = ["level0", "level1", "level2", "level3", "level4"]
      }
    }
  }
  management = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "launchpad"
        lz_key       = "azdo_agents_vm_prod"
        keys         = ["level0", "level1", "level2", "level3", "level4"]
      }
    }
  }
  connectivity = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "launchpad"
        lz_key       = "azdo_agents_vm_prod"
        keys         = ["level0", "level1", "level2", "level3", "level4"]
      }
    }
  }
}
