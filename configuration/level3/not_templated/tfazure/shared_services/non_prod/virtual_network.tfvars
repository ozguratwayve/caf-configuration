vnets = {
  tfazure_shared_svc_vnet = {
    resource_group_key = "tfazure_shared_svc"
    region             = "region1"
    vnet = {
      name          = "tfazure-shared-svc-vnet"
      address_space = ["10.205.0.0/18"]
      dns_servers_keys = {
        ip1 = {
          lz_key        = "connectivity_private_dns_firewalls_non_prod"
          key           = "fw_non_prod_dns"
          resource_type = "azurerm_firewall"
        }
      }
    }

    subnets = {
      tfazure_shared_svc_aca = {
        name    = "tfazure-shared-svc-aca-snet"
        cidr    = ["10.205.0.0/23"]
        nsg_key = "tfazure_shared_svc_aca_nsg"
      }
    }
  }
}

network_watchers = {
  tfazure_shared_svc_vnet = {
    name               = "tfazure-shared-svc-network-watcher"
    resource_group_key = "tfazure_shared_svc"
    region             = "region1"
  }
}
