role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      purview_rg = {
        "Owner" = {
          azuread_groups = {
            keys = ["purview_landingzone_owner"]
          }
        }
      }
    }
  }
}