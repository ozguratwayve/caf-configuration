vnets = {
  data_mgmt_region1 = {
    resource_group_key = "data_management_connectivity_region1"
    region             = "region1"
    vnet = {
      name          = "vnet-connectivity-data-management"
      address_space = ["10.103.192.0/18"]
      dns_servers_keys = {
        ip1 = {
          lz_key        = "connectivity_private_dns_firewalls_non_prod"
          key           = "fw_non_prod_dns"
          resource_type = "azurerm_firewall"
        }
      }
    }
    specialsubnets = {}
    subnets = {
      private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.103.248.0/23"]
        nsg_key                                        = "empty_nsg"
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}


network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined
  empty_nsg = {}
}
