custom_landing_zones = {
  es-corp = {
    display_name               = "Corp"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_corp"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-online = {
    display_name               = "Online"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {
    }
    subscription_ids = [

    ]
  }

  es-corp-prod = {
    display_name               = "Production"
    parent_management_group_id = "es-corp"
    archetype_config = {
      archetype_id = "landingzone_prod"
      parameters = {
        "Deploy-ASCDF-Config" = {
          "emailSecurityContact" = {
            value = "keymate.secops@keymate.co.uk"
          }
          "logAnalytics" = {
            lz_key        = "management"
            output_key    = "diagnostics"
            resource_type = "log_analytics"
            resource_key  = "sentinel_re1"
            attribute_key = "id"
          }
          "enableAscForKubernetes" = {
            value = "DeployIfNotExists"
          }
          "enableAscForSql" = {
            value = "DeployIfNotExists"
          }
          "enableAscForSqlOnVm" = {
            value = "DeployIfNotExists"
          }
          "enableAscForDns" = {
            value = "DeployIfNotExists"
          }
          "enableAscForArm" = {
            value = "DeployIfNotExists"
          }
          "enableAscForOssDb" = {
            value = "DeployIfNotExists"
          }
          "enableAscForAppServices" = {
            value = "DeployIfNotExists"
          }
          "enableAscForRegistries" = {
            value = "DeployIfNotExists"
          }
          "enableAscForKeyVault" = {
            value = "DeployIfNotExists"
          }
          "enableAscForStorage" = {
            value = "DeployIfNotExists"
          }
          "enableAscForServers" = {
            value = "DeployIfNotExists"
          }
        }

      }
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-corp-non-prod = {
    display_name               = "Non Production"
    parent_management_group_id = "es-corp"
    archetype_config = {
      archetype_id   = "landingzone_non_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-online-web = {
    display_name               = "Non Production"
    parent_management_group_id = "es-online"
    archetype_config = {
      archetype_id   = "landingzone_online_web"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

  es-online-web-low-threshold = {
    display_name               = "Non Production Low Threshold"
    parent_management_group_id = "es-online-web"
    archetype_config = {
      archetype_id = "landingzone_pil_low_threshold"
      parameters = {
        # "Deny-IP-Forwarding" = {
        #   default effect: Deny
        # }
        "Deny-Priv-Containers-AKS" = {
          effect = {
            value = "Deny"
          }
        }
        "Deny-Priv-Escalation-AKS" = {
          effect = {
            value = "Deny"
          }
          excludedNamespaces = {
            values = ["kube-system", "gatekeeper-system", "azure-arc", "nginx"]
          }
          excludedImages = {
            values = ["confluentinc/cp-schema-registry:*"]
          }

        }
        "Enforce-AKS-HTTPS" = {
          effect = {
            value = "Deny"
          }
        }
        "Deny-Private-DNS-Zones" = {
          effect = {
            value = "Audit" # see Jira: DB-5492
          }
        }
        "Deny-RDP-From-Internet" = {
          effect = {
            value = "Deny"
          }
        }
        "Deny-Storage-http" = {
          effect = {
            value = "Deny"
          }
        }
        # "Enforce-TLS-SSL" = {
        #    See default effects (select the relevant tag to this config)
        #    https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/blob/main/modules/archetypes/lib/policy_set_definitions/policy_set_definition_es_enforce_encrypttransit.tmpl.json
        # }
        "Deny-Public-Endpoints" = {
          "ACRPublicIpDenyEffect" = {
            value = "Deny"
          }
          "AFSPublicIpDenyEffect" = {
            value = "Deny"
          }
          "AKSPublicIpDenyEffect" = {
            value = "Deny"
          }
          "BatchPublicIpDenyEffect" = {
            value = "Deny"
          }
          "CosmosPublicIpDenyEffect" = {
            value = "Deny"
          }
          "KeyVaultPublicIpDenyEffect" = {
            value = "Audit"
          }
          "MySQLFlexPublicIpDenyEffect" = {
            value = "Deny"
          }
          "PostgreSQLFlexPublicIpDenyEffect" = {
            value = "Deny"
          }
          "SqlServerPublicIpDenyEffect" = {
            value = "Deny"
          }
          "StoragePublicIpDenyEffect" = {
            value = "Audit"
          }
        }
        "Deny-DataB-Pip" = {
          "effect" = {
            value = "Audit"
          }
        }
        "Deny-DataB-Sku" = {
          "effect" = {
            value = "Audit"
          }
        }
        "Deny-DataB-Vnet" = {
          "effect" = {
            value = "Audit"
          }
        }
        # "Deny-PublicIP" = {
        #   "effect" = {
        #     value = "Audit"
        #   }
        # }
        # "Deploy-SQL-Security" = {
        #   "vulnerabilityAssessmentsEmail" = {
        #     value = "keymate.secops@keymate.co.uk"
        #   }
        #   "SqlDbTdeDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   "SqlDbSecurityAlertPoliciesDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   "SqlDbAuditingSettingsDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   "SqlDbVulnerabilityAssessmentsDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   # default values: https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/blob/main/modules/archetypes/lib/policy_set_definitions/policy_set_definition_es_deploy_sql_security.tmpl.json
        # }
        "Deny-KeyVault-Minimum-Expiration" = {
          "KeyVaultKeysMinimumDaysBeforeExpirationEffect" = {
            value = "Audit"
          }
          "KeyVaultKeysMinimumDaysBeforeExpirationValue" = {
            value = 30
          }
          "KeyVaultKeysMissingExpirationDateEffect" = {
            value = "Audit"
          }
          "KeyVaultSecretsMinimumDaysBeforeExpirationEffect" = {
            value = "Audit"
          }
          "KeyVaultSecretsMinimumDaysBeforeExpirationValue" = {
            value = 30
          }
          "KeyVaultSecretsMissingExpirationDateEffect" = {
            value = "Audit"
          }
        }
      }
      access_control = {}
    }
    subscriptions = {
      nab_dev0 = {
        lz_key = "subscriptions"
        key    = "nab_dev0"
      }
      nab_test0 = {
        lz_key = "subscriptions"
        key    = "nab_test0"
      }
      nab_perf0 = {
        lz_key = "subscriptions"
        key    = "nab_perf0"
      }
      nab_sit0 = {
        lz_key = "subscriptions"
        key    = "nab_sit0"
      }
      pol_dev = {
        lz_key = "subscriptions"
        key    = "pol_dev"
      }
      pol_test = {
        lz_key = "subscriptions"
        key    = "pol_test"
      }
      tyl_dev0 = {
        lz_key = "subscriptions"
        key    = "tyl_dev0"
      }
      tyl_test0 = {
        lz_key = "subscriptions"
        key    = "tyl_test0"
      }
      keymatedev_tfazure_shared_services = {
        lz_key = "subscriptions"
        key    = "keymatedev_tfazure_shared_services"
      }
      keymatedev_caf_shared_services = {
        lz_key = "subscriptions"
        key    = "keymatedev_caf_shared_services"
      }
      cibc_dev = {
        lz_key = "subscriptions"
        key    = "cibc_dev"
      }
      cibc_test = {
        lz_key = "subscriptions"
        key    = "cibc_test"
      }
      cibc_sit = {
        lz_key = "subscriptions"
        key    = "cibc_sit"
      }
      keymatedev_ob_test = {
        lz_key = "subscriptions"
        key    = "keymatedev_ob_test"
      }
      keymatedev_ace_dev = {
        lz_key = "subscriptions"
        key    = "keymatedev_ace_dev"
      }
      plive_dev = {
        lz_key = "subscriptions"
        key    = "plive_dev"
      }
      keymatedev_sre_sandpit = {
        lz_key = "subscriptions"
        key    = "keymatedev_sre_sandpit"
      }
      # Datamesh Subscriptions
      cibc_dev_dm = {
        lz_key = "subscriptions"
        key    = "cibc_dev_dm"
      }
      cibc_sit_dm = {
        lz_key = "subscriptions"
        key    = "cibc_sit_dm"
      }
      cibc_test_dm = {
        lz_key = "subscriptions"
        key    = "cibc_test_dm"
      }
      nab_dev_dm = {
        lz_key = "subscriptions"
        key    = "nab_dev_dm"
      }
      nab_sit_dm = {
        lz_key = "subscriptions"
        key    = "nab_sit_dm"
      }
      nab_test_dm = {
        lz_key = "subscriptions"
        key    = "nab_test_dm"
      }
      nab_perf_dm = {
        lz_key = "subscriptions"
        key    = "nab_perf_dm"
      }
      nwb_perf_dm = {
        lz_key = "subscriptions"
        key    = "nwb_perf_dm"
      }
      nwb_test_dm = {
        lz_key = "subscriptions"
        key    = "nwb_test_dm"
      }
      nwb_uat_dm = {
        lz_key = "subscriptions"
        key    = "nwb_uat_dm"
      }
      pol_dev_dm = {
        lz_key = "subscriptions"
        key    = "pol_dev_dm"
      }
      pol_poc_dm = {
        lz_key = "subscriptions"
        key    = "pol_poc_dm"
      }
      vdi_hosting = {
        lz_key = "subscriptions"
        key    = "vdi_hosting"
      }
      pol_sandpit_data = {
        lz_key = "subscriptions"
        key    = "pol_sandpit_data"
      }
    }
    subscription_ids = []
  }

  es-online-web-prod = {
    display_name               = "Production"
    parent_management_group_id = "es-online"
    archetype_config = {
      archetype_id   = "landingzone_online_web"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

  es-online-web-prod-low-threshold = {
    display_name               = "Production Low Threshold"
    parent_management_group_id = "es-online-web-prod"
    archetype_config = {
      archetype_id = "landingzone_pil_low_threshold"
      parameters = {
        # "Deny-IP-Forwarding" = {
        #   default effect: Deny
        # }
        "Deny-Priv-Containers-AKS" = {
          effect = {
            value = "Deny"
          }
        }
        "Deny-Priv-Escalation-AKS" = {
          effect = {
            value = "Deny"
          }
          excludedNamespaces = {
            values = ["kube-system", "gatekeeper-system", "azure-arc", "nginx"]
          }
          excludedImages = {
            values = ["confluentinc/cp-schema-registry:*"]
          }

        }
        "Enforce-AKS-HTTPS" = {
          effect = {
            value = "Deny"
          }
        }
        "Deny-Private-DNS-Zones" = {
          effect = {
            value = "Deny" # see Jira: DB-5492
          }
        }
        "Deny-RDP-From-Internet" = {
          effect = {
            value = "Deny"
          }
        }
        "Deny-Storage-http" = {
          effect = {
            value = "Deny"
          }
        }
        # "Enforce-TLS-SSL" = {
        #    See default effects (select the relevant tag to this config)
        #    https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/blob/main/modules/archetypes/lib/policy_set_definitions/policy_set_definition_es_enforce_encrypttransit.tmpl.json
        # }
        "Deny-Public-Endpoints" = {
          "ACRPublicIpDenyEffect" = {
            value = "Deny"
          }
          "AFSPublicIpDenyEffect" = {
            value = "Deny"
          }
          "AKSPublicIpDenyEffect" = {
            value = "Deny"
          }
          "BatchPublicIpDenyEffect" = {
            value = "Deny"
          }
          "CosmosPublicIpDenyEffect" = {
            value = "Deny"
          }
          "KeyVaultPublicIpDenyEffect" = {
            value = "Audit"
          }
          "MySQLFlexPublicIpDenyEffect" = {
            value = "Deny"
          }
          "PostgreSQLFlexPublicIpDenyEffect" = {
            value = "Deny"
          }
          "SqlServerPublicIpDenyEffect" = {
            value = "Deny"
          }
          "StoragePublicIpDenyEffect" = {
            value = "Audit"
          }
        }
        "Deny-DataB-Pip" = {
          "effect" = {
            value = "Deny"
          }
        }
        "Deny-DataB-Sku" = {
          "effect" = {
            value = "Deny"
          }
        }
        "Deny-DataB-Vnet" = {
          "effect" = {
            value = "Deny"
          }
        }
        "Deny-PublicIP" = {
          "effect" = {
            value = "Deny"
          }
        }
        # "Deploy-SQL-Security" = {
        #   "vulnerabilityAssessmentsEmail" = {
        #     value = "keymate.secops@keymate.co.uk"
        #   }
        #   "SqlDbTdeDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   "SqlDbSecurityAlertPoliciesDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   "SqlDbAuditingSettingsDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   "SqlDbVulnerabilityAssessmentsDeploySqlSecurityEffect" = {
        #     value = "DeployIfNotExists"
        #   }
        #   # default values: https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/blob/main/modules/archetypes/lib/policy_set_definitions/policy_set_definition_es_deploy_sql_security.tmpl.json
        # }
        "Deny-KeyVault-Minimum-Expiration" = {
          "KeyVaultKeysMinimumDaysBeforeExpirationEffect" = {
            value = "Audit"
          }
          "KeyVaultKeysMinimumDaysBeforeExpirationValue" = {
            value = 30
          }
          "KeyVaultKeysMissingExpirationDateEffect" = {
            value = "Audit"
          }
          "KeyVaultSecretsMinimumDaysBeforeExpirationEffect" = {
            value = "Audit"
          }
          "KeyVaultSecretsMinimumDaysBeforeExpirationValue" = {
            value = 30
          }
          "KeyVaultSecretsMissingExpirationDateEffect" = {
            value = "Audit"
          }
        }
      }
      access_control = {}
    }
    subscriptions = {
      loupe_prod = {
        lz_key = "subscriptions"
        key    = "loupe_prod"
      }
      # Datamesh Subscriptions
      pol_prod_dm = {
        key    = "pol_prod_dm"
        lz_key = "subscriptions"
      }
    }
    subscription_ids = []

  }

}