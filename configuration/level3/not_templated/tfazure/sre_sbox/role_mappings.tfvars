
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    subscriptions = {
      sre_sbox = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_sre_sbox"]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_sre_sbox"]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_sre_sbox"]
          }
        }
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_sre_sbox"]
          }
        }
      }
    }
    networking = {
      aks_devops_region1 = {
        lz_key = "gitops_virtual_networks"
        "Cosmos DB Operator" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_sre_sbox"]
          }
        }
      }
    }
  }
}
