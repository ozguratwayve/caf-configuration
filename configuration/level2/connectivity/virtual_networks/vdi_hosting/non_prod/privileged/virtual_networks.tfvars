vnets = {
  vdi_hosting_privileged = {
    resource_group_key = "vdi_hosting_privileged_connectivity_corp"
    region             = "region1"
    vnet = {
      name          = "vnet-connectivity-vdi-hosting-privileged-corp"
      address_space = ["10.103.128.0/20"]
      dns_servers_keys = {
        ip1 = {
          lz_key        = "connectivity_private_dns_firewalls_non_prod"
          key           = "fw_non_prod_dns"
          resource_type = "azurerm_firewall"
        }
      }
    }
     subnets = {
      vdi_hosting_privileged = {
        name            = "vdi_hosting_privileged"
        cidr            = ["10.103.130.0/23"]
        nsg_key         = "azure_vdi_hosting_nsg"
        route_table_key = "empty_udr"
      }
    }
    private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.103.190.0/23"]
        nsg_key                                        = "empty_nsg"
        enforce_private_link_endpoint_network_policies = true
      }
  }
}


route_tables = {
  empty_udr = {
    name               = "empty_udr"
    resource_group_key = "vdi_hosting_privileged_connectivity_corp"
  }
}
network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined
  empty_nsg = {}
  azure_kubernetes_cluster_nsg = {
    nsg = [
      {
        name                       = "http-in-allow-80",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "https-in-allow-443",
        priority                   = "110"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "vault-in-allow-8200",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "8200"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "rdp-in-allow-3389",
        priority                   = "130"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "ntp-out-allow",
        priority                   = "110"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "123"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "https-out-allow-443",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "rdp-out-allow-3389",
        priority                   = "130"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "http-out-allow-80",
        priority                   = "140"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
    ]
  }
}
