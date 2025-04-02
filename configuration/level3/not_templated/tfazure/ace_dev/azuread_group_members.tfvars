azuread_groups_membership = {
  caf_non_prod_landingzones_dns_contributors = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "identity_level2_non_prod"
        lz_key       = "identity_level2_non_prod"
        keys         = ["ace_dev_aks_identity"]
      }
    }
    azuread_service_principals = {
      app_1 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["tfazure_ace_dev"]
      }
    }
  }
  caf_tfazure_landingzone_maintainers_ace_dev = {
    members = {
      user_principal_names = [
        "ozgur.ozkan_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  }
  ace_dev_subscription_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
      user_principal_names = [
        "david.morgan_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "branimir.angelov_estafet.com#EXT#@keymatedev.onmicrosoft.com",
        "mythili.mahalingam_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "ray.liang_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  },
  ace_dev_cosmos_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_ace_dev_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
      user_principal_names = [
        "ozgur.ozkan_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra@keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "ray.liang_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  },
  ace_dev_key_vault_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
      user_principal_names = [
        "mythili.mahalingam_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  },
  ace_dev_sql_writers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_storage_blob_data_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_app_config_data_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_log_analytics_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_application_insights_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_key_vault_secret_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_aks_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_sql_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_ace_dev_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  ace_dev_ace_dev_support = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
      user_principal_names = [
        "mythili.mahalingam_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  },
  ace_dev_subscription_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team"
      ]
    }
  },
}

