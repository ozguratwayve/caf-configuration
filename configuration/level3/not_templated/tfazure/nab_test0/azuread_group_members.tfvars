azuread_groups_membership = {

  caf_non_prod_landingzones_dns_contributors = {
    managed_identities = {
      mi_1 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["nab_test0_aks_identity"]
      }
    }
    azuread_service_principals = {
      app_1 = {
        group_lz_key = "identity_level2_non_prod"
        lz_key       = "tfazure_shared_svc"
        keys         = ["tfazure_nab_test0"] # app-azure-platform-credentials-for-tfazure-nab-test0-gitops
      }
      app_2 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["nab_test0_aks_external_dns_spn"] # nab-test0-aks-external-dns-spn
      }
      app_3 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["nab_test0_aks_cert_manager_spn"] # nab-test0-aks-cert-manager-spn
      }
      app_4 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["nab_test0_piper_aks_external_dns_spn"] # nab-test0-piper-aks-external-dns-spn
      }
      app_5 = {
        group_lz_key = "identity_level2_non_prod"
        keys         = ["nab_test0_piper_aks_cert_manager_spn"] # nab-test0-piper-aks_cert-manager-spn
      }
    }
  }

  nab_test0_subscription_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]      
    }
  }
  nab_test0_cosmos_contributors = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_nab_test0_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_key_vault_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_sql_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_sql_writers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_sql_admins = {
    azuread_service_principals = {
      tfazure_gitops = {
        lz_key = "tfazure_shared_svc"
        keys   = ["tfazure_gitops"] # app-azure-platform-credentials-for-tfazure-gitops
      }
      tfazure_nab_test0 = {
        lz_key = "tfazure_shared_svc"
        keys   = ["tfazure_nab_test0"] # app-azure-platform-credentials-for-tfazure-nab-test0-gitops
      }
    }
  }
  nab_test0_storage_blob_data_contributors = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_app_config_data_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_log_analytics_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_application_insights_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_confluent_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]  
    }
  }
  nab_test0_techops_users = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_databricks_contributors = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_argo_workflows_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_argo_workflows_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_argo_workflows_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_cert_manager_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_cert_mananger_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_cert_mananger_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_elastic_operator_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_elastic_operator_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_elastic_operator_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_external_dns_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_external_dns_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_external_dns_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_insights_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_insights_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_insights_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_nginx_internal_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_nginx_external_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_nginx_internal_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_nginx_external_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_nginx_internal_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_nginx_external_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_relevance_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_relevance_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_relevance_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_seldon_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_seldon_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_seldon_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_spark_operator_admins = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_spark_operator_support = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
  nab_test0_piper_spark_operator_readers = {
    members = {
      group_names = [
        "RBAC_RM_Team",
        "RBAC_SM_Team",
        "RBAC_Engineering_Team",
        "RBAC_Engineering_Piper_Team",
        "RBAC_QA_Team"
      ]
    }
  }
}
