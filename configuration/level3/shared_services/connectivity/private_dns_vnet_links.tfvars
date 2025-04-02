private_dns_vnet_links = {
  shared_services_lnk = {
    lz_key   = "connectivity_virtual_networks_shared_services_non_prod"
    vnet_key = "shared_services_vnet_region1"
    private_dns_zones = {
      shared_services_lnk = {
        name   = "shared-services-vnet"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
}