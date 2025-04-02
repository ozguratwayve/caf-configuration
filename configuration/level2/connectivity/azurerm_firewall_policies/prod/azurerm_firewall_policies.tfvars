azurerm_firewall_policies = {
  secure_root = {
    name   = "secure-root-policy-prod"
    region = "region1"
    resource_group = {
      key = "firewall_policies"
    }

    sku = "Premium"

    threat_intelligence_mode = "Deny"
    intrusion_detection = {
      mode = "Deny"
    }
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
            source_addresses      = ["10.100.101.0/24"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
          rule3 = {
            name                  = "caf_management_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.102.0.0/18"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
          rule4 = {
            name                  = "imperva_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["199.83.128.0/21", "198.143.32.0/19", "149.126.72.0/21", "103.28.248.0/22", "45.64.64.0/22", "185.11.124.0/22", "192.230.64.0/18", "107.154.0.0/16", "45.60.0.0/16", "45.223.0.0/16"]
            destination_addresses = ["*"]
            destination_ports     = ["*"]
          }
          rule5 = {
            name                  = "aks_gitops_agents_TO_any"
            protocols             = ["Any"]
            source_addresses      = ["10.100.32.0/20"]
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
    }
    nat_rule_collections = {
      group1 = {
        name     = "loupe_prod_dnat"
        priority = 1001
        action   = "Dnat"
        rules = {
          rule1 = {
            name                = "loupe_prod_aks_ingress"
            protocols           = ["TCP"]
            source_addresses    = ["*"]
            destination_address = "20.68.225.58"
            #destination_address_public_ip_key = "pip1"
            destination_ports  = ["443"]
            translated_address = "10.224.0.122"
            translated_port    = "443"
          }
        }
      }
    }
  }
}
