
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    management_group = {
      "es-online-web" = {
        "Reader" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_non_prod"]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_non_prod"]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_non_prod"]
          }
        }
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = ["caf_tfazure_landingzone_maintainers_non_prod"]
          }
        }
      }
    }
    resource_groups = {
      tfazure_shared_svc = {
        "Contributor" = {
          object_ids = {
            keys = [
              "b0cc5b4f-aadb-4824-9958-7d0567e096bf", // caf_platform_maintainers
              "0fb7555a-9347-4686-af4c-efe01cb34134"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
            ]
          }
        }
        "User Access Administrator" = {
          object_ids = {
            keys = []
          }
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
            ]
          }
        }
      }
    }
    subscriptions = {
      cibc_dev = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_dev"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_dev"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_dev"
            ]
          }
        }
      }
      cibc_test = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_test"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_test"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_test"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_test"
            ]
          }
        }
      }
      cibc_sit = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_sit"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_sit"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_sit"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_sit"
            ]
          }
        }
      }
      nab_dev0 = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_dev0"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_dev0"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_dev0"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_dev0"
            ]
          }
        }
      }
      nab_perf0 = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_perf0"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_perf0"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_perf0"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_perf0"
            ]
          }
        }
      }
      nab_sit0 = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_sit0"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_sit0"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_sit0"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_sit0"
            ]
          }
        }
      }
      nab_test0 = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_test0"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_test0"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_test0"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_nab_test0"
            ]
          }
        }
      }
      pol_dev = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_dev"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_dev"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_dev"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_dev"
            ]
          }
        }
      }
      pol_test = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_test"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_test"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_test"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_pol_test"
            ]
          }
        }
      }
      tyl_dev0 = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_dev0"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_dev0"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_dev0"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_dev0"
            ]
          }
        }
      }
      tyl_test0 = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_test0"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_test0"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_test0"
            ]
          }
        },
        "App Configuration Data Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_tyl_test0"
            ]
          }
        }
      }
      keymatedev_tfazure_shared_services = {
        "Reader" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod"
            ]
          }
        }
        "Contributor" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod"
            ]
          }
        }
        "User Access Administrator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod"
            ]
          }
        }
      }
    }
    azure_container_registries = {
      acr1 = {
        "AcrPull" = {
          managed_identities = {
            lz_key = "gitops_aks_identity"
            keys = [
              "gitops_aks_kubelet_msi"
            ]
          }
        }
      }
    }
    networking = {
      aks_devops_region1 = {
        lz_key = "gitops_virtual_networks"
        "Cosmos DB Operator" = {
          azuread_groups = {
            keys = [
              "caf_tfazure_landingzone_maintainers_non_prod",
              "caf_tfazure_landingzone_maintainers_cibc_dev",
              "caf_tfazure_landingzone_maintainers_cibc_test",
              "caf_tfazure_landingzone_maintainers_cibc_sit",
              "caf_tfazure_landingzone_maintainers_nab_dev0",
              "caf_tfazure_landingzone_maintainers_pol_dev",
              "caf_tfazure_landingzone_maintainers_pol_test",
              "caf_tfazure_landingzone_maintainers_tyl_dev0",
              "caf_tfazure_landingzone_maintainers_tyl_test0"
            ]
          }
        }
      }
    }
  }
}
