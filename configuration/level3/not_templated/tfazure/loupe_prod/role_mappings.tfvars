
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {

    subscriptions = {
      loupe_prod = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_loupe_prod"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_loupe_prod"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_loupe_prod"
            ]
          }
        }
      }
    }
  }
}
