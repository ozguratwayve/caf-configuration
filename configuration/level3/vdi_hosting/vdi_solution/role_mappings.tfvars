role_mapping = {
  built_in_role_mapping = {

    subscriptions = {
      vdi_solution = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "vdi_users"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "vdi_users"
            ]
          }
        }
        "Virtual Machine User Login" = {
          azuread_groups = {
            keys = [
              "vdi_users"
            ]
          }
        }
        "Virtual Machine Administrator Login" = {
          azuread_groups = {
            keys = [
              "vdi_users"
            ]
          }
        }
      }
    }
  }
}

