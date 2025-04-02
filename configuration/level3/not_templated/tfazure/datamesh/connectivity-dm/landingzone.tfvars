landingzone = {
  backend_type = "azurerm"
  level        = "level3"
  key          = "connectivity_dm"

  tfstates = {
    connectivity_virtual_hubs_non_prod = {
      tfstate = "connectivity_virtual_hubs_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_virtual_hubs_prod = {
      tfstate = "connectivity_virtual_hubs_prod.tfstate"
      level   = "lower"
    }
    virtual_hubs_route_tables_non_prod = {
      tfstate   = "connectivity_virtual_hubs_route_tables_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    virtual_hubs_route_tables_prod = {
      tfstate   = "connectivity_virtual_hubs_route_tables_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    connectivity_private_dns_non_prod = {
      tfstate = "connectivity_private_dns_non_prod.tfstate"
      level   = "lower"
    }
    connectivity_private_dns_prod = {
      tfstate = "connectivity_private_dns_prod.tfstate"
      level   = "lower"
    }
    nab_dev_dm = {
      tfstate = "nab_dev_dm.tfstate"
      level   = "current"
    }
    nab_sit_dm = {
      tfstate = "nab_sit_dm.tfstate"
      level   = "current"
    }
    nab_test_dm = {
      tfstate = "nab_test_dm.tfstate"
      level   = "current"
    }
    nab_perf_dm = {
      tfstate = "nab_perf_dm.tfstate"
      level   = "current"
    }
    nwb_perf_dm = {
      tfstate = "nwb_perf_dm.tfstate"
      level   = "current"
    }
    nwb_test_dm = {
      tfstate = "nwb_test_dm.tfstate"
      level   = "current"
    }
    nwb_uat_dm = {
      tfstate = "nwb_uat_dm.tfstate"
      level   = "current"
    }
    pol_dev_dm = {
      tfstate = "pol_dev_dm.tfstate"
      level   = "current"
    }
    pol_poc_dm = {
      tfstate = "pol_poc_dm.tfstate"
      level   = "current"
    }
    pol_prod_dm = {
      tfstate = "pol_prod_dm.tfstate"
      level   = "current"
    }
  }
}