virtual_hub_connections = {
  aks_devops_region1_to_hub = {
    name = "connectivity-aks-gitops-non-prod-TO-vhub-non-prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      vnet_key = "aks_devops_region1" # add vnet id here
    }
    internet_security_enabled = true

    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
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
