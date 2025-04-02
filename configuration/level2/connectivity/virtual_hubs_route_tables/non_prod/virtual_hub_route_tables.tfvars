virtual_hub_route_tables = {
  spoke_vnet_non_prod = {
    name = "spoke_vnet_non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    routes = {
      all_traffic = {
        # to route to the secure firewall name must be either 'all_traffic', 'private_traffic', 'public_traffic'
        name              = "all_traffic"
        destinations_type = "CIDR"
        # Configure virtual hub security. Updates will apply globally to all connections.
        #
        # If your organization uses public IP ranges in Virtual Networks and Branch Offices, you will need to specify those IP prefixes explicitly.
        # The public IP prefixes can be specified individually or as aggregates.
        #
        # Include RFC 1918 prefixes in the private traffic range.
        #
        destinations  = ["0.0.0.0/0", "10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
        next_hop_type = "ResourceId"
        next_hop = {
          lz_key        = "connectivity_secure_firewalls_non_prod"
          resource_type = "azurerm_firewalls"
          key           = "fw_secure_non_prod"
          # or
          # id = ""
        }
      }
    }
  }
}