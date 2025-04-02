private_dns_vnet_links = {
  dm_pvtdns_nab_dev_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "nab_dev_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "nab-dev-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_nab_test_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "nab_test_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "nab-test-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_nab_sit_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "nab_sit_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "nab-sit-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_nwb_perf_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "nwb_perf_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "nwb-perf-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_nwb_test_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "nwb_test_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "nwb-test-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_nwb_uat_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "nwb_uat_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "nwb-uat-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_pol_dev_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "pol_dev_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "pol-dev-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_non_prod"
      }
    }
  }
  dm_pvtdns_pol_prod_dm_core_lnk = {
    vnet_key = "dm_vnet_core"
    lz_key   = "pol_prod_dm"
    private_dns_zones = {
      dm_vnet_core_lnk = {
        name   = "pol-prod-dm-vnet-core"
        key    = "privatelink.postgres.database.azure.com"
        lz_key = "connectivity_private_dns_prod"
      }
    }
  }
}