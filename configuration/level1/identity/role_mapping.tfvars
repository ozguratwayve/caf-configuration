role_mapping = {
  built_in_role_mapping = {
    subscriptions = {
      "logged_in_subscription" = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_vault"]
          }
        }
      }
    }
  }
}