vnets = {
  shared_services_vnet_region1 = {
    resource_group_key = "shared_services_connectivity_non_prod_region1"
    region             = "region1"
    vnet = {
      name          = "vnet_connectivity_shared_services_non_prod"
      address_space = ["10.193.0.0/18"]
      dns_servers_keys = {
        ip1 = {
          lz_key        = "connectivity_private_dns_firewalls_non_prod"
          key           = "fw_non_prod_dns"
          resource_type = "azurerm_firewall"
        }
      }
    }
    specialsubnets = {}
    subnets = {
      aks_nodepool_system = {
        name            = "aks_nodepool_system"
        cidr            = ["10.193.0.0/23"]
        nsg_key         = "azure_kubernetes_cluster_nsg"
        route_table_key = "empty_udr"
      }
      aks_nodepool_user = {
        name            = "aks_nodepool_user"
        cidr            = ["10.193.8.0/21"]
        nsg_key         = "azure_kubernetes_cluster_nsg"
        route_table_key = "empty_udr"
      }
      postgresql_fs = {
        name    = "postgresql_fs"
        cidr    = ["10.193.24.0/24"]
        nsg_key = "empty_nsg"
        delegation = {
          name               = "flexibleservers"
          service_delegation = "Microsoft.DBforPostgreSQL/flexibleServers"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/join/action",
          ]
        }
      }
      private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.193.16.0/23"]
        nsg_key                                        = "empty_nsg"
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}

route_tables = {
  empty_udr = {
    name               = "empty_udr"
    resource_group_key = "shared_services_connectivity_non_prod_region1"
  }
}

network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined
  empty_nsg = {}
  azure_kubernetes_cluster_nsg = {
    nsg = [
      {
        name                       = "aks-http-in-allow",
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
        name                       = "aks-https-in-allow",
        priority                   = "110"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      # {
      #   name                       = "deny-all",
      #   priority                   = "1000"
      #   direction                  = "Inbound"
      #   access                     = "Deny"
      #   protocol                   = "tcp"
      #   source_port_range          = "*"
      #   destination_port_range     = "80"
      #   source_address_prefix      = "*"
      #   destination_address_prefix = "*"
      # },
      {
        name                       = "aks-api-out-allow-1194",
        priority                   = "100"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "1194"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "aks-api-out-allow-9000",
        priority                   = "110"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "9000"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "aks-ntp-out-allow",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "123"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "aks-https-out-allow-443",
        priority                   = "130"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "aks-vault-out-allow",
        priority                   = "140"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "8200"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
    ]
  }
}