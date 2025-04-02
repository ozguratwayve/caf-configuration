vnets = {
  aks_devops_region1_prod = {
    resource_group_key = "gitops_vnets_prod"
    region             = "region1"
    vnet = {
      name          = "aks-azdo-prod"
      address_space = ["10.100.32.0/20"]
      dns_servers_keys = {
        ip1 = {
          lz_key        = "connectivity_private_dns_firewalls_prod"
          key           = "fw_prod_dns"
          resource_type = "azurerm_firewall"
        }
      }
    }
    specialsubnets = {}
    subnets = {
      private_endpoints = {
        name                                           = "private_endpoints"
        cidr                                           = ["10.100.38.0/24"]
        enforce_private_link_endpoint_network_policies = true
        nsg_key                                        = "empty_nsg"
      }

      # route_table_key seems needed: Error: creating Managed Kubernetes Cluster "pildev-aks-aks-azdo-devops-cnn" (Resource Group "pildev-rg-aks-azdo-devops-rvf"): containerservice.ManagedClustersClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="ExistingRouteTableNotAssociatedWithSubnet" Message="An existing route table has not been associated with subnet /subscriptions/16e59691-bf0d-44ec-acbe-9797f673378d/resourceGroups/pildev-rg-devops-networking-eqm/providers/Microsoft.Network/virtualNetworks/pildev-vnet-aks-azdo-ohx/subnets/pildev-snet-aks_nodepool_system-hpo. Please update the route table association"
      aks_infra_prod = {
        name              = "aks_infra_subnet_prod"
        cidr              = ["10.100.39.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        route_table_key   = "empty_udr"
      }
      aks_app_prod = {
        name              = "aks_app_subnet_prod"
        cidr              = ["10.100.40.0/24"]
        service_endpoints = ["Microsoft.KeyVault"]
        nsg_key           = "empty_nsg"
        route_table_key   = "empty_udr"
      }
      aks_nodepool_system_prod = {
        name            = "aks_nodepool_system_prod"
        cidr            = ["10.100.41.0/24"]
        nsg_key         = "empty_nsg"
        route_table_key = "empty_udr"
      }
      aks_nodepool_user_prod = {
        name            = "aks_nodepool_user_prod"
        cidr            = ["10.100.42.0/24"]
        nsg_key         = "empty_nsg"
        route_table_key = "empty_udr"
      }
    }
  }
}

route_tables = {
  empty_udr = {
    name               = "empty_udr_prod"
    resource_group_key = "gitops_vnets_prod"
  }
}
