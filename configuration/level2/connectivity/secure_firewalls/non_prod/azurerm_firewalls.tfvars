azurerm_firewalls = {
  fw_secure_non_prod = {
    name               = "fw-secure-non_prod"
    resource_group_key = "firewall"
    sku_tier           = "Standard"
    sku_name           = "AZFW_Hub"
    firewall_policy = {
      key    = "secure_root"
      lz_key = "connectivity_firewall_policies_non_prod"
    }
    zones = [1, 2, 3]

    virtual_hub = {
      non_prod = {
        lz_key          = "connectivity_virtual_hubs_non_prod"
        virtual_hub_key = "non_prod"
        public_ip_count = 14 # OPTION 2 - https://keymateonline.atlassian.net/wiki/spaces/POLPS999/pages/562069702/Azure+CAF+Networking+-+Application+Gateway#Option-2---Nginx-Ingress-Controllers
      }
    }
  }
}
