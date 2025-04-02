virtual_hub_connections = {
  devops_region1_to_hub = {
    name = "connectivity-gitops-prod-TO-vhub-prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    vnet = {
      lz_key   = "gitops_connectivity_prod"
      vnet_key = "devops_region1" # add vnet id here
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