network_security_group_definition = {
  tfazure_shared_svc_aca_nsg = {
    version            = 1
    resource_group_key = "tfazure_shared_svc"
    name               = "tfazure-shared-svc-aca-nsg"
    nsg = [
      {
        name                       = "allow_any_custom_1194_udp_outbound",
        priority                   = "100"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        source_address_prefix      = "*"
        destination_port_range     = "1194"
        destination_address_prefix = "AzureCloud.uksouth"
      },
      {
        name                       = "allow_any_custom_9000_tcp_outbound",
        priority                   = "105"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        source_address_prefix      = "*"
        destination_port_range     = "9000"
        destination_address_prefix = "AzureCloud.uksouth"
      },
      {
        name                       = "allow_any_custom_443_tcp_outbound",
        priority                   = "110"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        source_address_prefix      = "*"
        destination_port_range     = "443"
        destination_address_prefix = "AzureMonitor"
      }
    ]
  }
}
