# non-prod supernet: 10.192.0.0/11
# spoke cidr: 10.201.64.0/18
# firewall/dns: 10.101.62.4

#         Subnet ID         Purpose
# 1       10.201.64.0/25     dm_snet_core_kv_pri
# 2       10.201.64.128/25   dm_snet_core_redis_pri
# 3       10.201.65.0/25     dm_snet_core_databricks_pub
# 4       10.201.65.128/25   dm_snet_core_databricks_pri
# 5       10.201.66.0/25     dm_snet_core_databricks_end
# 6       10.201.66.128/25   <reserved>
# 7       10.201.67.0/25     dm_snet_core_pgsql_pri
# 8       10.201.67.128/25   <reserved>
# 9       10.201.68.0/25     dm_snet_core_storage_pri
# 10      10.201.68.128/25   dm_snet_core_acr_pri
# 11      10.201.69.0/25     dm_snet_core_aks_nodepool_system_pri
# 12      10.201.69.128/25   dm_snet_core_aks_nodepool_datamesh_pri
# 13      10.201.70.0/25     <aks-nodepool-reserved>
# 14      10.201.70.128/25   <aks-nodepool-reserved>
# 15      10.201.71.0/25     <aks-nodepool-reserved>
# 16      10.201.71.128/25   <aks-nodepool-reserved>
# 17      10.201.72.0/24     <function-apps-reserved>

vnets = {
  dm_vnet_core = {
    resource_group_key = "dm_rg_networking"
    region             = "region1"

    vnet = {
      name          = "core"
      address_space = ["10.201.64.0/18"]
      dns_servers_keys = {
        fw_non_prod_dns = {
          resource_type = "azurerm_firewall"
          key           = "fw_non_prod_dns"
          lz_key        = "connectivity_private_dns_firewalls_non_prod"
        }
      }
    }

    specialsubnets = {}

    subnets = {
      dm_snet_core_kv_pri = {
        name = "core-kv-pri"
        cidr = ["10.201.64.0/25"]
      }
      dm_snet_core_redis_pri = {
        name = "core-redis-pri"
        cidr = ["10.201.64.128/25"]
      }
      dm_snet_core_databricks_pub = {
        name              = "core-db-pub"
        cidr              = ["10.201.65.0/25"]
        nsg_key           = "dm_nsg_databricks_nscc"
        service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
        delegation = {
          name               = "core-databricks-pub"
          service_delegation = "Microsoft.Databricks/workspaces"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/join/action",
            "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
            "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
          ]
        }
      }
      dm_snet_core_databricks_pri = {
        name              = "core-db-pri"
        cidr              = ["10.201.65.128/25"]
        nsg_key           = "dm_nsg_databricks_nscc"
        service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
        delegation = {
          name               = "core-databricks-pri"
          service_delegation = "Microsoft.Databricks/workspaces"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/join/action",
            "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
            "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
          ]
        }
      }
      dm_snet_core_pgsql_pri = {
        name = "core-pgsql-pri"
        cidr = ["10.201.67.0/25"]
        delegation = {
          name               = "flexibleservers"
          service_delegation = "Microsoft.DBforPostgreSQL/flexibleServers"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/join/action",
          ]
        }
      }
      dm_snet_core_storage_pri = {
        name = "core-storage-pri"
        cidr = ["10.201.68.0/25"]
      }
      dm_snet_core_acr_pri = {
        name = "core-acr-pri"
        cidr = ["10.201.68.128/25"]
      }
      dm_snet_core_aks_nodepool_system_pri = {
        name            = "core-aks-nodepool-system-pri"
        cidr            = ["10.201.69.0/25"]
        route_table_key = "dm_rt_firewall"
      }
      dm_snet_core_aks_nodepool_datamesh_pri = {
        name            = "core-aks-nodepool-datamesh-pri"
        cidr            = ["10.201.69.128/25"]
        route_table_key = "dm_rt_firewall"
      }
      dm_snet_core_function_apps = {
        service_endpoints = ["Microsoft.Storage"]
        name              = "core-function-apps"
        cidr              = ["10.201.72.0/24"]
        delegation = {
          name               = "Microsoft.Web.serverFarms"
          service_delegation = "Microsoft.Web/serverFarms"
          actions = [
            "Microsoft.Network/virtualNetworks/subnets/action",
          ]
        }
      }
    }
  }
}

network_watchers = {
  dm_vnet_core = {
    name               = "core"
    resource_group_key = "dm_rg_networking"
    region             = "region1"
  }
}