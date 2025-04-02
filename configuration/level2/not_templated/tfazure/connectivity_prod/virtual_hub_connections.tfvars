virtual_hub_connections = {
  vnet_loupe_prod_to_vhub_prod = {
    name = "vnet-loupe_prod-TO-vhub-prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    vnet = {
      # vnet_key = ""
      # use resource_id if vnet is provisioned outside of CAF
      resource_id = "/subscriptions/e21b42f3-0baa-48d7-83b6-846675ea2ce0/resourceGroups/loupe-prod-vnet-rg/providers/Microsoft.Network/virtualNetworks/loupe-prod-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_prod"
        virtual_hub_route_table_key = "spoke_vnet_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
}
