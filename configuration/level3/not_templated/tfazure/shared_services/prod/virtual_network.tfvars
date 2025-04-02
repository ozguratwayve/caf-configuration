vnets = {
  tfazure_shared_svc_prod_vnet = {
    resource_group_key = "tfazure_shared_svc_prod"
    region             = "region1"
    vnet = {
      name          = "tfazure-shared-svc-prod-vnet"
      address_space = ["10.230.0.0/18"]
      dns_servers_keys = {
        ip1 = {
          lz_key        = "connectivity_private_dns_firewalls_prod"
          key           = "fw_prod_dns"
          resource_type = "azurerm_firewall"
        }
      }
    }
  }
}
