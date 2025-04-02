
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      tfazure_shared_svc_prod = {
        "Contributor" = {
          object_ids = {
            keys = [
              "b0cc5b4f-aadb-4824-9958-7d0567e096bf", // caf_platform_maintainers
              "0fb7555a-9347-4686-af4c-efe01cb34134"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_prod",
            ]
          }
        }
        "User Access Administrator" = {
          object_ids = {
            keys = []
          }
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_prod",
            ]
          }
        }
      }
    }
    subscriptions = {
      keymatedev_tfazure_shared_services_prod = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_prod"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_prod"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }
    azure_container_registries = {
      acr1 = {
        "AcrPull" = {
          managed_identities = {
            lz_key = "gitops_aks_identity_prod"
            keys = [
              "gitops_aks_kubelet_msi_prod"
            ]
          }
        }
      }
    }
  }
}
