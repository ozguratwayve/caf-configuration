virtual_hub_connections = {
  vnet_tfazure_shared_svc_vhub_prod = {
    name = "vnet-tfazure-shared-svc-prod-TO-vhub-prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    vnet = {
      lz_key   = "tfazure_shared_svc_prod"
      vnet_key = "tfazure_shared_svc_prod_vnet"
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
