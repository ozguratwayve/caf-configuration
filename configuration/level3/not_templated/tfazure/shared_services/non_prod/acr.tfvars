azure_container_registries = {
  acr1 = {
    name               = "tfazure-shrsvc"
    resource_group_key = "tfazure_shared_svc"
    sku                = "Premium"
    admin_enabled      = true


    # georeplications = {
    #   region2 = {
    #     tags = {
    #       region = "australiacentral"
    #       type   = "acr_replica"
    #     }
    #   }
    #   region3 = {
    #     tags = {
    #       region = "westeurope"
    #       type   = "acr_replica"
    #     }
    #   }
    # }
    # network_rule_set = {
    #   rule1 = {
    #     default_action = "Allow"
    #     # ip_rules = {
    #     #   rule1 = {
    #     #     ip_range = [""]
    #     #   }
    #     # }
    #     virtual_networks = {
    #       acr1_jumphost = {
    #         vnet_key   = "hub_rg1"
    #         subnet_key = "jumphost"
    #       }
    #     }
    #   }
    # }
    # private_endpoints = {
    #   # Require enforce_private_link_endpoint_network_policies set to true on the subnet
    #   shared_services_aks-aks_nodepool_system = {
    #     name               = "acr-test-private-link"
    #     resource_group_key = "shared_services_aks_re1"

    #     vnet_key   = "shared_services_aks"
    #     subnet_key = "private_endpoints"

    #     private_service_connection = {
    #       name                 = "acr-test-private-link-psc"
    #       is_manual_connection = false
    #       subresource_names    = ["registry"]
    #     }
    #   }
    # }

  }
}
