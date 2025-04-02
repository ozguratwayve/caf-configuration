vnets = {
  aks_devops_region1 = {
    resource_group_key = "gitops_vnets"
    region             = "region1"
    vnet = {
      name          = "aks-azdo"
      address_space = ["10.100.16.0/20"]
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
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.100.16.0/26"]
        nsg_key = "azure_bastion_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level0 = {
        name              = "level0"
        cidr              = ["10.100.17.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level1 = {
        name              = "level1"
        cidr              = ["10.100.18.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level2 = {
        name              = "level2"
        cidr              = ["10.100.19.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level3 = {
        name              = "level3"
        cidr              = ["10.100.20.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      release_agent_level4 = {
        name              = "level4"
        cidr              = ["10.100.21.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        # route_table_key   = "spokes_to_firewall_hub_re1"
      }
      private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.100.22.0/24"]
        enforce_private_link_endpoint_network_policies = true
        nsg_key                                        = "empty_nsg"
      }

      # route_table_key seems needed: Error: creating Managed Kubernetes Cluster "pildev-aks-aks-azdo-devops-cnn" (Resource Group "pildev-rg-aks-azdo-devops-rvf"): containerservice.ManagedClustersClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="ExistingRouteTableNotAssociatedWithSubnet" Message="An existing route table has not been associated with subnet /subscriptions/16e59691-bf0d-44ec-acbe-9797f673378d/resourceGroups/pildev-rg-devops-networking-eqm/providers/Microsoft.Network/virtualNetworks/pildev-vnet-aks-azdo-ohx/subnets/pildev-snet-aks_nodepool_system-hpo. Please update the route table association"
      aks_infra = {
        name              = "aks_infra_subnet"
        cidr              = ["10.100.23.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        route_table_key   = "empty_udr"
      }
      aks_app = {
        name              = "aks_app_subnet"
        cidr              = ["10.100.24.0/24"]
        service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage", "Microsoft.AzureCosmosDB", "Microsoft.Sql"]
        nsg_key           = "empty_nsg"
        route_table_key   = "empty_udr"
      }
      aks_nodepool_system = {
        name            = "aks_nodepool_system"
        cidr            = ["10.100.25.0/24"]
        nsg_key         = "empty_nsg"
        route_table_key = "empty_udr"
      }
      aks_nodepool_user = {
        name            = "aks_nodepool_user"
        cidr            = ["10.100.26.0/24"]
        nsg_key         = "empty_nsg"
        route_table_key = "empty_udr"
      }
    }
  }
}

route_tables = {
  empty_udr = {
    name               = "empty_udr"
    resource_group_key = "gitops_vnets"
  }
}
