
##################################################
#
# Networking resources
#
##################################################


public_ip_addresses = {
  bastion_host_rg1 = {
    name                    = "pip1"
    resource_group_key      = "networking"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"

  }
}

vnets = {
  devops_region1 = {
    resource_group_key = "networking"
    region             = "region1"
    vnet = {
      name          = "devops"
      address_space = ["10.100.100.0/24"]
    }
    specialsubnets = {}
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.100.100.0/26"]
        nsg_key = "azure_bastion_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      jumpbox = {
        name              = "jumpbox"
        cidr              = ["10.100.100.64/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level0 = {
        name              = "level0"
        cidr              = ["10.100.100.72/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level1 = {
        name              = "level1"
        cidr              = ["10.100.100.80/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level2 = {
        name              = "level2"
        cidr              = ["10.100.100.88/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level3 = {
        name              = "level3"
        cidr              = ["10.100.100.96/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level4 = {
        name              = "level4"
        cidr              = ["10.100.100.104/29"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.100.100.128/25"]
        enforce_private_link_endpoint_network_policies = true
        nsg_key                                        = "empty_nsg"
      }
    }
  }
}

route_tables = {
  empty_udr = {
    name               = "empty_udr"
    resource_group_key = "networking"
  }
}
