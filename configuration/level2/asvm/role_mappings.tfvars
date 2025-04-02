
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "b0cc5b4f-aadb-4824-9958-7d0567e096bf", // caf_platform_maintainers
              "0fb7555a-9347-4686-af4c-efe01cb34134"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod",
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "b0cc5b4f-aadb-4824-9958-7d0567e096bf", // caf_platform_maintainers
              "0fb7555a-9347-4686-af4c-efe01cb34134"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "b0cc5b4f-aadb-4824-9958-7d0567e096bf", // caf_platform_maintainers
              "0fb7555a-9347-4686-af4c-efe01cb34134"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            lz_key = "identity"
            keys = [
              "caf_vault",
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "0fb7555a-9347-4686-af4c-efe01cb34134" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "b0cc5b4f-aadb-4824-9958-7d0567e096bf", // caf_platform_maintainers
              "0fb7555a-9347-4686-af4c-efe01cb34134"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            lz_key = "identity"
            keys = [
              "caf_vault",
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "0fb7555a-9347-4686-af4c-efe01cb34134" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
