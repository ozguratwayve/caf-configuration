# IPAM

Please keep this up to date.

<br/><br/>

## Handy commands

Use Azure Resource Graph Explorer Kusto query to determine if the IP allocations defined in this documentation matches what's actually deployed
URL: https://portal.azure.com/#view/HubsExtension/ArgQueryBlade
```kusto
resources
| where type contains "microsoft.network/virtualnetwork"
| project name, properties.addressSpace.addressPrefixes
```


## Overview
| Networks                               | CIDR               |
| -------------------------------------- | ------------------ |
| Core Network                           | 10.100.0.0/15      |
| Management Network                     | 10.102.0.0/15      |
|  -- Databricks Management Network      | 10.103.0.0/20      |
|  -- Entra Private Access Network       | 10.103.16.0/20     |
|  -- VDI Hosting Network                | 10.103.128.0/18    |
|  -- Data Management Network            | 10.103.192.0/18    |
| Site-to-Site VPN Network               | 10.104.0.0/13      |

<br/><br/>


## Regions
| Region      | Region Short | Azure Region       |
| ----------- | ------------ | ------------------ |
| region1     | re1          | uksouth            |
| region2     | re2          | ukwest             |

<br/><br/>


## CAF Core Network Address Spaces
supernet: 10.100.0.0/15
network constraints: network components only, no direct server connections allowed on any vHub networks.

| CAF Level | templated | CAF Landingzone Key                         | CAF vNet Key            | Network Type | CIDR               |
| --------- | --------- | ------------------------------------------- | ----------------------- | ------------ | ------------------ |
| n/a       | no        | n/a ( P81 keymatedev )                    | n/a                     | vnetgw       | 10.100.8.0/22      |
| Level 1   | no        | gitops_connectivity                         | devops_region1          | vnet         | 10.100.100.0/24    |
| Level 1   | no        | gitops_connectivity                         | aks_devops_region1      | vnet         | 10.100.16.0/20     |
| Level 1   | no        | gitops_connectivity_prod                    | devops_region1          | vnet         | 10.100.101.0/24    |
| Level 2   | no        | gitops_virtual_networks_prod                | aks_devops_region1_prod | vnet         | 10.100.32.0/20     |
| Level 2   | templated | connectivity_private_dns_firewalls_prod     | vnet                    | vnet         | 10.101.61.0/24     |
| Level 2   | templated | connectivity_private_dns_firewalls_non_prod | vnet                    | vnet         | 10.101.62.0/24     |
| Level 2   | templated | connectivity_virtual_hubs_prod              | prod                    | vHub         | 10.101.51.0/24     |
| Level 2   | initially | connectivity_virtual_hubs_non_prod          | non_prod                | vHub         | 10.101.52.0/24     |

<br/><br/>

## CAF Management Network Address Spaces
supernet: 10.102.0.0/15
network constraints: no private dns vnet links allowed without Azure Policy exemptions.

| CAF Level | templated | CAF Landingzone Key                                               | CAF vNet Key | Network Type | CIDR               |
| --------- | --------- | ----------------------------------------------------------------- | ------------ | ------------ | ------------------ |
| Level 2   | no        | connectivity_virtual_networks_management_prod                     | mgmt_region1 | vnet         | 10.102.0.0/18      |
|           |           |                                                                   | mgmt_region2 |              | 10.102.64.0/18     |
| Level 2   | no        | connectivity_virtual_networks_management_non_prod                 | mgmt_region1 | vnet         | 10.102.128.0/18    |
| Level 2   |           | Databricks Management Supernet - see table below                  |              | vnet         | 10.103.0.0/20      |
|           |           |                                                                   |              |              | ...                |
|           |           |                                                                   |              |              | 10.103.192.0/18    |

<br/><br/>


## Databricks (Regional) Management Network Address Spaces
> supernet: 10.103.0.0/20

> constraints: For an organization with multiple workspaces, it is important to understand that a properly configured network configuration is exactly one browser authentication private endpoint for each Azure Databricks region. See https://learn.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/private-link#--step-4-configure-dns-to-support-sso-authentication-flow-required-for-ui-access

| CAF Level | templated | CAF Landingzone Key                                          | CAF vNet Key | Network Type | CIDR               |
| --------- | --------- | ------------------------------------------------------------ | ------------ | ------------ | ------------------ |
| Level 2   | no        | connectivity_virtual_networks_databricks_management_prod     | mgmt_region1 | vnet         | 10.103.0.0/22      |
|           |           |                                                              | mgmt_region2 |              | 10.103.4.0/22      |
| Level 2   | no        | connectivity_virtual_networks_databricks_management_non_prod | mgmt_region1 | vnet         | 10.103.8.0/22      |
|           |           |                                                              | mgmt_region2 |              | 10.103.12.0/22     |

<br/><br/>



## VDI Hosting Network Address Spaces
> supernet: 10.103.128.0/18

> constraints: reserved for remote VDI hosting resources

| CAF Level | templated | CAF Landingzone Key                                               | CAF vNet Key | Network Type | CIDR               |
| --------- | --------- | ----------------------------------------------------------------- | ------------ | ------------ | ------------------ |
| Level 2   | no        | connectivity_virtual_networks_vdi_hosting_privileged_corp         | vdi_hosting  | vnet         | 10.103.128.0/20    |
| Level 2   | no        | connectivity_virtual_networks_vdi_hosting_non_privileged_corp     | vdi_hosting  | vnet         | 10.103.144.0/20    |
|           |           |                                                                   |              |              | ...                |
|           |           |                                                                   |              |              | 10.103.192.0/18    |

<br/><br/>


## VPN Sites Network Address Spaces
> supernet: 10.104.0.0/13

> constraints: reserved for remote VPN sites

| CAF Level | templated | CAF Landingzone Key                                          | CAF vNet Key | Network Type | CIDR               |
| --------- | --------- | ------------------------------------------------------------ | ------------ | ------------ | ------------------ |
| Level 2   | no        | P81 (HA setup)                                               |              | vnetgw       | 10.104.0.0/21      |
| Level 2   | no        | p2s restricted data client pool                              |              | vnetgw       | 10.104.8.0/21      |
| Level 2   | no        | p2s admins          client pool                              |              | vnetgw       | 10.104.16.0/21     |
|           |           | unallocated - last CIDR block in supernet                    |              | vnetgw       | 10.104.56.0/21     |

<br/><br/>


# NON-PROD Applications Landing Zone Network Address Space
supernet: 10.192.0.0/11
network constraints: no private dns vnet links allowed without Azure Policy exemptions.

| tfazure   | templated | CAF vHub Integration                       | app landing zone           | Network Type | CIDR               |
| --------- | --------- | ------------------------------------------ | -------------------------- | ------------ | ------------------ |
|           | no        | unallocated                                | reserved                   | vnet         | 10.192.0.0/16      |
| no        | no        | connectivity_virtual_hubs_non_prod         | shared_services            | vnet         | 10.193.0.0/18      |
|           | no        | unallocated                                | reserved                   | vnet         | 10.196.0.0/18      |
| .         | .         | .                                          | .                          | .            | .                  |
| .         | .         | .                                          | .                          | .            | .                  |
| .         | .         | .                                          | .                          | .            | .                  |
| no        | no        | unallocated                                | reserved                   | vnet         | 10.196.0.0/14      |
| no        | no        | connectivity_virtual_hubs_non_prod         | pol-poc-dm                 | vnet         | 10.201.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | pol-dev-dm                 | vnet         | 10.201.64.0/18     |
|           | no        | connectivity_virtual_hubs_non_prod         | pol-???-dm                 | vnet         | 10.201.128.0/18    |
|           | no        | connectivity_virtual_hubs_non_prod         | pol-???-dm                 | vnet         | 10.201.192.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | nwb-test-dm                | vnet         | 10.202.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | nwb-perf-dm                | vnet         | 10.202.64.0/18     |
| no        | no        | connectivity_virtual_hubs_non_prod         | nwb-uat-dm                 | vnet         | 10.202.128.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | nwb-????-dm                | vnet         | 10.202.192.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | cibc-dev-dm                | vnet         | 10.203.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | cibc-test-dm               | vnet         | 10.203.64.0/18     |
| no        | no        | connectivity_virtual_hubs_non_prod         | cibc-sit-dm                | vnet         | 10.203.128.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | cibc-????-dm               | vnet         | 10.203.192.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-dev-dm                 | vnet         | 10.204.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-test-dm                | vnet         | 10.204.64.0/18     |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-sit-dm                 | vnet         | 10.204.128.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-perf-dm                | vnet         | 10.204.192.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | tfazure-shared-svc         | vnet         | 10.205.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-dev0                   | vnet         | 10.206.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-perf0                  | vnet         | 10.206.64.0/18     |
| no        | no        | connectivity_virtual_hubs_non_prod         | nab-sit0                   | vnet         | 10.206.128.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         | pol-dev                 | vnet            | 10.206.192.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod         |
pol-test                | vnet            | 10.207.0.0/18      |
| no        | no        | connectivity_virtual_hubs_non_prod         | tyl-dev0                | vnet            | 10.207.64.0/18     |
| no        | no        | connectivity_virtual_hubs_non_prod         | tyl-test0               | vnet            | 10.207.128.0/18    |
| no        | no        | connectivity_virtual_hubs_non_prod   |     |




<br/><br/>

# PROD Applications Landing Zone Address Space
supernet: 10.224.0.0/11
network constraints: no private dns vnet links allowed without Azure Policy exemptions.

| tfazure   | templated | CAF vHub Integration                       | app landing zone        | Network Type | CIDR               |
| --------- | --------- | ------------------------------------------ | ----------------------- | ------------ | ------------------ |
| no        | no        | connectivity_virtual_hubs_prod             | loupe_prod              | vnet         | 10.224.0.0/18      |
|           | no        | connectivity_virtual_hubs_prod             | pol-prod-dm             | vnet         | 10.225.0.0/18      |
|           |           | ...                                        |                         |              | ...                |
| no        | no        | connectivity_virtual_hubs_prod             | tfazure-shared-svc-prod | vnet         | 10.230.0.0/18      |
|           | no        | unallocated                                |                         | vnet         | 10.245.128.0/18    |
<br/><br/>