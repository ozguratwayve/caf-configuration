role_mapping = {
  built_in_role_mapping = {
    management_group = {
      "es-online-web" = {
        "Owner" = {
          azuread_apps = {
            keys = ["hashicorp_vault_app"]
          }
        }
      }
    }
  }
}