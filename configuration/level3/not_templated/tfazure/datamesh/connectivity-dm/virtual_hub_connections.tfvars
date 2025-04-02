# Bug: https://github.com/Azure/caf-terraform-landingzones/issues/360
virtual_hub_connections = {
  nab_dev_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nab-dev-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nab_dev_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  nab_test_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nab-test-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nab_test_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  nab_sit_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nab-sit-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nab_sit_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  nab_perf_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nab-perf-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nab_perf_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  nwb_perf_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nwb-perf-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nwb_perf_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  nwb_test_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nwb-test-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nwb_test_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  nwb_uat_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "nwb-uat-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "nwb_uat_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  pol_dev_dm_vnet_core_TO_pildev_vhub_non_prod = {
    name                      = "pol-dev-dm-vnet-core-TO-pildev-vhub-non-prod-wrp"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      lz_key   = "pol_dev_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
  pol_prod_dm_vnet_core_TO_pildev_vhub_prod = {
    name                      = "pol-prod-dm-vnet-core-TO-pildev-vhub-prod-bia"
    internet_security_enabled = false
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    vnet = {
      lz_key   = "pol_prod_dm"
      vnet_key = "dm_vnet_core"
    }
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "spoke_vnet_prod"
        lz_key                      = "virtual_hubs_route_tables_prod"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
}