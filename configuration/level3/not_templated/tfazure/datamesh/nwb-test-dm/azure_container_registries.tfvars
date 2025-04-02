azure_container_registries = {
  dm_acr_core = {
    name                          = "core"
    resource_group_key            = "dm_rg_aks"
    sku                           = "Premium"
    public_network_access_enabled = false
    georeplications               = {}

    private_endpoints = {
      dm_pe_acr_core = {
        name               = "acr-core"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_acr_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-acr-core"
          is_manual_connection = false
          subresource_names    = ["registry"]
        }

        private_dns = {
          keys   = ["privatelink.azurecr.io"]
          lz_key = "connectivity_private_dns_non_prod"
        }

        tags = {
          project          = "datamesh"
          landingzone      = "nwb-test-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }
  }
}