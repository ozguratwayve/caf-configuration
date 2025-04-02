azuread_groups_membership = {
  caf_prod_landingzones_dns_contributors = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "identity_level2_prod"
        keys         = ["loupe_prod_aks_identity"]
      }
    }
    azuread_service_principals = {
      app_1 = {
        group_lz_key = "identity_level2_prod"
        keys         = ["tfazure_loupe_prod"]
      }
    }
  }
  caf_tfazure_landingzone_maintainers_loupe_prod = {
    members = {
      user_principal_names = [
        "ozgur.ozkan_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  }
  loupe_prod_subscription_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
      user_principal_names = [
        "david.morgan_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "branimir.angelov_estafet.com#EXT#@keymatedev.onmicrosoft.com",
        "mythili.mahalingam_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  },
  loupe_prod_cosmos_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_loupe_prod_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
      user_principal_names = [
        "james.sykes_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "ozgur.ozkan_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  },
  loupe_prod_key_vault_readers = {
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
  loupe_prod_sql_writers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_storage_blob_data_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_app_config_data_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_log_analytics_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_application_insights_readers = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_key_vault_secret_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_aks_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_sql_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_loupe_prod_admins = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team",
        "RBAC_ACE_Development_Team"
      ]
    }
  },
  loupe_prod_loupe_prod_support = {
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
  loupe_prod_subscription_contributors = {
    members = {
      group_names = [
        "RBAC_ACE_Engineering_Team"
      ]
    }
  },
}

