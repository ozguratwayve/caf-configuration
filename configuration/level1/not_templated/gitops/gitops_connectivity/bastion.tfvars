##################################################
#
# All resources to deploy Azure Bastion and Linux VM
#
##################################################

public_ip_addresses = {
  bastion_host_rg1 = {
    name                    = "pip1"
    resource_group_key      = "networking"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"

  }
}

bastion_hosts = {
  launchpad_host = {
    name               = "bastion"
    resource_group_key = "bastion_launchpad"
    vnet_key           = "devops_region1"
    subnet_key         = "AzureBastionSubnet"
    public_ip_key      = "bastion_host_rg1"

  }
}
