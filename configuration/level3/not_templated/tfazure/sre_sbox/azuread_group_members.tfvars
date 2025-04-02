azuread_groups_membership = {
  caf_tfazure_landingzone_maintainers_sre_sbox = {
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "paul.cardus_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "antony.lehmann_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "josh.hawthornthwaite_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rahavi.ramesh_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "shavgath.perumal_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
  }
  caf_non_prod_landingzones_dns_contributors = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "identity_level2_non_prod"
        lz_key       = "identity_level2_non_prod"
        keys         = ["sre-sbox-aks-identity"]
      }
    }
    azuread_service_principals = {
      app_1 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["tfazure_sre_sbox"] # app-azure-platform-credentials-for-tfazure-sre-sbox-gitops
      }
      app_2 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["sre_sbox_aks_external_dns_spn"] # sre-sbox-aks-external-dns-spn
      }
      app_3 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["sre_sbox_aks_cert_manager_spn"] # sre-sbox-aks-cert-manager-spn
      }
      app_4 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["sre_sbox_piper_aks_external_dns_spn"] # sre-sbox-piper-aks-external-dns-spn
      }
      app_5 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["sre_sbox_piper_aks_cert_manager_spn"] # sre-sbox-piper-aks-cert-manager-spn
      }
    }
  }
  sre_sbox_subscription_contributors = {
    members = {
      user_principal_names = [
        "Mihai.Ghita_endava.com#EXT#@keymatedev.onmicrosoft.com",
        "cristina.gheorghe_endava.com#EXT#@keymatedev.onmicrosoft.com",
        "ian.rolfe_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "andreea.ciudin_endava.com#EXT#@keymatedev.onmicrosoft.com",
        "amit.kumar_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
  }
  sre_sbox_subscription_readers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_cosmos_contributors = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_sre_sbox_admins = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_key_vault_readers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_sql_readers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_sql_writers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_sql_admins = {
    azuread_service_principals = {
      tfazure_gitops = {
        lz_key = "tfazure_shared_svc"
        keys   = ["tfazure_gitops"] # app-azure-platform-credentials-for-tfazure-gitops
      }
      tfazure_sre_sbox = {
        keys = ["tfazure_sre_sbox"] # app-azure-platform-credentials-for-tfazure-pol-sbox-gitops
      }
    }
  }
  sre_sbox_storage_blob_data_contributors = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_app_config_data_readers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_log_analytics_readers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_application_insights_readers = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_confluent_support = {
    members = {
      object_ids = []
    }
  }
  sre_sbox_techops_users = {
    members = {
      object_ids = []
    }
  }
}

