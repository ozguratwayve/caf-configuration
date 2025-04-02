virtual_hub_connections = {
  vnet_cibc_dev_to_vhub_nonprod = {
    name = "vnet-cibc_dev-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/443a5b65-2ab6-44ef-87a0-9063211e91c8/resourceGroups/cibc-dev-vnet-rg/providers/Microsoft.Network/virtualNetworks/cibc-dev-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_ob_test2_to_vhub_nonprod = {
    name = "vnet-ob_test2-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/4e5213b8-8a12-4485-ad08-4f6bb4ec4037/resourceGroups/ob-test2-vnet-rg/providers/Microsoft.Network/virtualNetworks/ob-test2-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_cibc_test_to_vhub_nonprod = {
    name = "vnet-cibc_test-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/11da1544-d399-4830-8f9f-99801760db74/resourceGroups/cibc-test-vnet-rg/providers/Microsoft.Network/virtualNetworks/cibc-test-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_ace_dev_to_vhub_nonprod = {
    name = "vnet-ace_dev-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/9cce8459-e175-4dcd-893b-451ca0b1b99b/resourceGroups/ace-dev-vnet-rg/providers/Microsoft.Network/virtualNetworks/ace-dev-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_sre_sbox_to_vhub_nonprod = {
    name = "vnet-sre-sbox-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/858a138f-500a-4fdd-ab1a-1a54a59d0abd/resourceGroups/sre-sbox-vnet-rg/providers/Microsoft.Network/virtualNetworks/sre-sbox-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_cibc_sit_to_vhub_nonprod = {
    name = "vnet-cibc-sit-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/2944818d-0871-4e27-8dd3-be18998b07bd/resourceGroups/cibc-sit-vnet-rg/providers/Microsoft.Network/virtualNetworks/cibc-sit-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_nab_dev0_to_vhub_nonprod = {
    name = "vnet-nab-dev0-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/7f21a72c-9a04-4695-97f5-dbd2c59acf1a/resourceGroups/nab-dev0-vnet-rg/providers/Microsoft.Network/virtualNetworks/nab-dev0-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_nab_perf0_to_vhub_nonprod = {
    name = "vnet-nab-perf0-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/eff01273-0812-4aee-9ecb-26aa3125bbeb/resourceGroups/nab-perf0-vnet-rg/providers/Microsoft.Network/virtualNetworks/nab-perf0-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_nab_sit0_to_vhub_nonprod = {
    name = "vnet-nab-sit0-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/492af47f-e29e-4e20-ae0b-a268adc8752b/resourceGroups/nab-sit0-vnet-rg/providers/Microsoft.Network/virtualNetworks/nab-sit0-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_nab_test0_to_vhub_nonprod = {
    name = "vnet-nab-test0-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/56f07937-9778-4af5-9362-b99e73b8dbf2/resourceGroups/nab-test0-vnet-rg/providers/Microsoft.Network/virtualNetworks/nab-test0-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_pol_dev_to_vhub_nonprod = {
    name = "vnet-pol-dev-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/a57c49dc-cb12-4154-bbc0-e8b352c20ca6/resourceGroups/pol-dev-vnet-rg/providers/Microsoft.Network/virtualNetworks/pol-dev-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_pol_test_to_vhub_nonprod = {
    name = "vnet-pol-test-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/9c266e6c-1a0c-4d74-be33-6b8c11d0808f/resourceGroups/pol-test-vnet-rg/providers/Microsoft.Network/virtualNetworks/pol-test-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_tyl_dev0_to_vhub_nonprod = {
    name = "vnet-tyl-dev0-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/22c1aa00-82fd-4fa7-a76c-a0c25c139973/resourceGroups/tyl-dev0-vnet-rg/providers/Microsoft.Network/virtualNetworks/tyl-dev0-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  },
  vnet_tyl_test0_to_vhub_nonprod = {
    name = "vnet-tyl-test0-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      resource_id = "/subscriptions/ec427bdd-95f7-424a-9366-3171d83be397/resourceGroups/tyl-test0-vnet-rg/providers/Microsoft.Network/virtualNetworks/tyl-test0-vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        lz_key                      = "virtual_hubs_route_tables_non_prod"
        virtual_hub_route_table_key = "spoke_vnet_non_prod"
        propagated_route_table = {
          # To route vnet to vnet traffic through firewall manager (private traffic)
          labels = ["none"]
          # Route internet traffic through firewall manager (private traffic)
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
}
