route_tables = {
  dm_rt_firewall = {
    name               = "spoke-to-firewall"
    resource_group_key = "dm_rg_networking"
  }
}

azurerm_routes = {
  dm_rt_firewall = {
    name                   = "dm_rt_firewall"
    resource_group_key     = "dm_rg_networking"
    route_table_key        = "dm_rt_firewall"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.101.51.132" # Hub Firewall
  }
}