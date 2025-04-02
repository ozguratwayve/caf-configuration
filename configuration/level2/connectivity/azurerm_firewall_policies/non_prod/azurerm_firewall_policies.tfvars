azurerm_firewall_policies = {
  secure_root = {
    name   = "secure-root-policy-non_prod"
    region = "region1"
    resource_group = {
      key = "firewall_policies"
    }
    threat_intelligence_mode = "Alert"
  }
}


# Added manually in the file since rover ignite template is not mature enough as of now (08/07/2022)
# To be reviewed at a later date
azurerm_firewall_policy_rule_collection_groups = {
  group1 = {
    firewall_policy_key = "secure_root"
    name                = "default-fwpolicy-rcg"
    priority            = 2000

    network_rule_collections = {
      group1 = {
        name     = "caf_rule_collections"
        priority = 2000
        action   = "Allow"
        rules = {
          rule1 = {
            name                  = "p81_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.100.8.0/22"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
          rule2 = {
            name                  = "gitops_agents_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.100.100.0/24"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
          rule3 = {
            name                  = "caf_management_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.102.128.0/18"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
          rule4 = {
            name                  = "aks_gitops_agents_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.100.16.0/20"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
        }
      }
      group2 = {
        name     = "tf_azure_rule_collections"
        priority = 3000
        action   = "Allow"
        rules = {
          rule2 = {
            name                  = "tfazure_alz_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.192.0.0/10"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
        }
      }
      group3 = {
        name     = "caf_vdi_hosting_rule_collections"
        priority = 4000
        action   = "Allow"
        rules = {
          rule2 = {
            name                  = "vdi_hosting_alz_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.103.128.0/20", "10.103.144.0/20"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
        }
      }
      group4 = {
        name     = "caf_p2s_rule_collections"
        priority = 5000
        action   = "Allow"
        rules = {
          rule1 = {
            name                  = "p2s_restricted_data_access_TO_tfazure_alz"
            protocols             = ["Any"]
            source_addresses      = ["10.104.8.0/21"]
            destination_addresses = ["10.192.0.0/10"]
            destination_ports     = ["*"]
          }
          rule2 = {
            name                  = "p2s_restricted_data_access_TO_vdi_hosting"
            protocols             = ["Any"]
            source_addresses      = ["10.104.8.0/21"]
            destination_addresses = ["10.103.128.0/20", "10.103.144.0/20"]
            destination_ports     = ["*"]
          }
          rule3 = {
            name                  = "p2s_admins_access_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.104.16.0/21"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
        }
      }
    }
    nat_rule_collections = {
      group1 = {
        name     = "caf_nat_collections_sre_sbox"
        priority = 1001
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "caf_nat_collections_sre_sbox_apim"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.0.194.160"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.243.28.5"
            translated_port    = "443"
          }
          rule2 = {
            name                = "caf_nat_collections_sre_sbox_aks"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "13.87.95.125"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.243.0.122"
            translated_port    = "443"
          }
        }
      }
      group2 = {
        name     = "caf_nat_collections_nwb_uat_dm"
        priority = 1002
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "caf_nat_collections_nwb_uat_dm_aks"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.254.44.131"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.202.133.161"
            translated_port    = "443"
          }
        }
      }
      group3 = {
        name     = "caf_nat_collections_nab_test0"
        priority = 1003
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "caf_nat_collections_nab_test0_apim"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.0.194.43"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.206.220.5"
            translated_port    = "443"
          }
          rule2 = {
            name                = "caf_nat_collections_nab_test0_aks"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.0.195.79"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.206.216.94"
            translated_port    = "443"
          }
        }
      }
      group4 = {
        name     = "caf_nat_collections_cibc_dev"
        priority = 1004
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "caf_nat_collections_cibc_dev_apim"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.68.19.99"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.245.28.6"
            translated_port    = "443"
          }
          rule2 = {
            name                = "caf_nat_collections_cibc_dev_aks"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.68.21.91"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.245.24.33"
            translated_port    = "443"
          }
        }
      }
      group5 = {
        name     = "caf_nat_collections_nab_perf0"
        priority = 1005
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "caf_nat_collections_nab_perf0_apim"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.254.47.121"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.206.92.5"
            translated_port    = "443"
          }
          rule2 = {
            name                = "caf_nat_collections_nab_perf0_aks"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.68.21.125"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.206.88.91"
            translated_port    = "443"
          }
        }
      }
      group6 = {
        name     = "caf_nat_collections_nab_dev0"
        priority = 1006
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "caf_nat_collections_nab_dev0_apim"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.0.240.4"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.206.28.5"
            translated_port    = "443"
          }
          rule2 = {
            name                = "caf_nat_collections_nab_dev0_aks"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.0.240.107"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.206.25.190"
            translated_port    = "443"
          }
        }
      }
      #   group7 = {
      #     name     = "caf_nat_collections_nab_dev0"
      #     priority = 1007
      #     action   = "Dnat"
      #     rules = {
      #       rule1 = {
      #         name                = "caf_nat_collections_nab_perf0_apim"
      #         protocols           = ["TCP"]
      #         source_addresses    = ["*"]
      #         destination_address = "20.0.240.4"
      #         #destination_address_public_ip_key = "pip1"
      #         destination_ports  = ["443"]
      #         translated_address = "10.206.28.5"
      #         translated_port    = "443"
      #       }
      #       rule2 = {
      #         name                = "caf_nat_collections_nab_perf0_aks"
      #         protocols           = ["TCP"]
      #         source_addresses    = ["*"]
      #         destination_address = "20.0.240.107"
      #         #destination_address_public_ip_key = "pip1"
      #         destination_ports  = ["443"]
      #         translated_address = "10.206.25.190"
      #         translated_port    = "443"
      #       }
      #     }
      #   }
      #   group8 = {
      #     name     = "caf_nat_collections_nab_sit0"
      #     priority = 1008
      #     action   = "Dnat"
      #     rules = {
      #       rule1 = {
      #         name                = "caf_nat_collections_nab_sit0_apim"
      #         protocols           = ["TCP"]
      #         source_addresses    = ["*"]
      #         destination_address = "20.0.240.4"
      #         #destination_address_public_ip_key = "pip1"
      #         destination_ports  = ["443"]
      #         translated_address = "10.206.28.5"
      #         translated_port    = "443"
      #       }
      #       rule2 = {
      #         name                = "caf_nat_collections_nab_sit0_aks"
      #         protocols           = ["TCP"]
      #         source_addresses    = ["*"]
      #         destination_address = "20.0.240.107"
      #         #destination_address_public_ip_key = "pip1"
      #         destination_ports  = ["443"]
      #         translated_address = "10.206.25.190"
      #         translated_port    = "443"
      #       }
      #     }
      #   }
      #   group9 = {
      #     name     = "caf_nat_collections_nab_test0"
      #     priority = 1009
      #     action   = "Dnat"
      #     rules = {
      #       rule1 = {
      #         name                = "caf_nat_collections_nab_test0_apim"
      #         protocols           = ["TCP"]
      #         source_addresses    = ["*"]
      #         destination_address = "20.0.240.4"
      #         #destination_address_public_ip_key = "pip1"
      #         destination_ports  = ["443"]
      #         translated_address = "10.206.28.5"
      #         translated_port    = "443"
      #       }
      #       rule2 = {
      #         name                = "caf_nat_collections_nab_test0_aks"
      #         protocols           = ["TCP"]
      #         source_addresses    = ["*"]
      #         destination_address = "20.0.240.107"
      #         #destination_address_public_ip_key = "pip1"
      #         destination_ports  = ["443"]
      #         translated_address = "10.206.25.190"
      #         translated_port    = "443"
      #       }
      #     }
      #   }
    }
    application_rule_collections = {
      rule1 = {
        name     = "app_rule_jfrog"
        priority = 500
        action   = "Allow"
        rules = {
          rule1 = {
            name = "app_rule_collection1_jfrog"
            protocols = {
              1 = {
                type = "Https"
                port = 443
              }
            }
            source_addresses  = ["*"]
            destination_fqdns = ["usetyl.jfrog.io"]
          }
        }
      }
    }
  }
}
