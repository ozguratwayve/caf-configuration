private_dns = {
  # Start - environment specific private dns zones
  "sre-sbox-private.keymate.dev" = {
    name               = "sre-sbox-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.sre-sbox-private.keymate.dev" = {
    name               = "piper.sre-sbox-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "cibc-dev-private.keymate.dev" = {
    name               = "cibc-dev-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.cibc-dev-private.keymate.dev" = {
    name               = "piper.cibc-dev-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "cibc-test-private.keymate.dev" = {
    name               = "cibc-test-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.cibc-test-private.keymate.dev" = {
    name               = "piper.cibc-test-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "cibc-sit-private.keymate.dev" = {
    name               = "cibc-sit-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.cibc-sit-private.keymate.dev" = {
    name               = "piper.cibc-sit-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "nab-dev0-private.keymate.dev" = {
    name               = "nab-dev0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.nab-dev0-private.keymate.dev" = {
    name               = "piper.nab-dev0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "nab-perf0-private.keymate.dev" = {
    name               = "nab-perf0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.nab-perf0-private.keymate.dev" = {
    name               = "piper.nab-perf0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "nab-sit0-private.keymate.dev" = {
    name               = "nab-sit0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.nab-sit0-private.keymate.dev" = {
    name               = "piper.nab-sit0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "nab-test0-private.keymate.dev" = {
    name               = "nab-test0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.nab-test0-private.keymate.dev" = {
    name               = "piper.nab-test0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "pol-dev-private.keymate.dev" = {
    name               = "pol-dev-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.pol-dev-private.keymate.dev" = {
    name               = "piper.pol-dev-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "pol-test-private.keymate.dev" = {
    name               = "pol-test-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.pol-test-private.keymate.dev" = {
    name               = "piper.pol-test-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "tyl-test0-private.keymate.dev" = {
    name               = "tyl-test0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.tyl-test0-private.keymate.dev" = {
    name               = "piper.tyl-test0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "tyl-dev0-private.keymate.dev" = {
    name               = "tyl-dev0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "piper.tyl-dev0-private.keymate.dev" = {
    name               = "piper.tyl-dev0-private.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  # End - environment specific private dns zones

  "azuredatabricks.net" = {
    name               = "azuredatabricks.net"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        cibc-dev-hist-databr = {
          name    = "adb-3839278963163392.12"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        cibc-test-hist-databr = {
          name    = "adb-2084216824273488.8"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        cibc-sit-hist-databr = {
          name    = "adb-4572609660267064.4"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        uksouth_databricks = {
          name    = "uksouth"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        ukwest_databricks = {
          name    = "ukwest"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        sre-sbox-hist-databr = {
          name    = "adb-398465791653350.10"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        pol-dev-dm-dbw-core-nscc = {
          name    = "adb-2391022772409058.18"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nwb-perf-dm-dbw-core-nscc = {
          name    = "adb-4924641773029498.18"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nwb-test-dm-dbw-core-nscc = {
          name    = "adb-981369044284887.7"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nwb-uat-dm-dbw-core-nscc = {
          name    = "adb-5970247137004624.4"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nab-dev0-hist-databr = {
          name    = "adb-6958528690179782.2"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nab-test0-databr = {
          name = "adb-6257010640279230.10"
          ttl = 10
          records = ["51.140.204.4"]
        }
        nab-sit0-databr = {
          name = "adb-7393431879005038.18"
          ttl = 10
          records = ["51.140.204.4"]
        }
        nab-perf0-hist-databr = {
          name    = "adb-5155324744223685.5"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        cibc-dev-dm-dbw-core-nscc = {
          name    = "adb-5501652463542413.13"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        cibc-test-dm-dbw-core-nscc = {
          name    = "adb-6651650780648007.7"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        cibc-sit-dm-dbw-core-nscc = {
          name    = "adb-3500938133916987.7"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nab-dev-dm-dbw-core-nscc = {
          name    = "adb-7284457525573631.11"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nab-test-dm-dbw-core-nscc = {
          name    = "adb-2282139762334348.8"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nab-perf-dm-dbw-core-nscc = {
          name    = "adb-2725312276052908.8"
          ttl     = 10
          records = ["51.140.204.4"]
        }
        nab-sit-dm-dbw-core-nscc = {
          name    = "adb-6316067300937468.8"
          ttl     = 10
          records = ["51.140.204.4"]
        }
      }
    }

    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "keymatedev.internal" = {
    name               = "keymatedev.internal"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "keymatehosting.internal" = {
    name               = "keymatehosting.internal"
    resource_group_key = "dns_connectivity_non_prod"
    records = {
      a_records = {
        hashicorp_vault_ui = {
          name    = "vault"
          ttl     = 10
          records = ["10.102.130.33"]
        }
      }
    }
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.adf.azure.com" = {
    name               = "privatelink.adf.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.afs.azure.net" = {
    name               = "privatelink.afs.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.agentsvc.azure-automation.net" = {
    name               = "privatelink.agentsvc.azure-automation.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.api.azureml.ms" = {
    name               = "privatelink.api.azureml.ms"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azconfig.io" = {
    name               = "privatelink.azconfig.io"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azure-automation.net" = {
    name               = "privatelink.azure-automation.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azure-devices.net" = {
    name               = "privatelink.azure-devices.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azurecr.io" = {
    name               = "privatelink.azurecr.io"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        obtestacr = {
          name    = "obtest2acr"
          ttl     = 10
          records = ["10.239.40.5"]
        }
        obtestacr_uksouth_data = {
          name    = "obtest2acr.uksouth.data"
          ttl     = 10
          records = ["10.239.40.4"]
        }
      }
    }

    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azurehdinsight.net" = {
    name               = "privatelink.azurehdinsight.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azuresynapse.net" = {
    name               = "privatelink.azuresynapse.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azurewebsites.net" = {
    name               = "privatelink.azurewebsites.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.blob.core.windows.net" = {
    name               = "privatelink.blob.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.cassandra.cosmos.azure.com" = {
    name               = "privatelink.cassandra.cosmos.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.cognitiveservices.azure.com" = {
    name               = "privatelink.cognitiveservices.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.database.windows.net" = {
    name               = "privatelink.database.windows.net"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        ob-test-sql-srv = {
          name    = "ob-test2-sql-srv"
          ttl     = 10
          records = ["10.239.37.4"]
        }
      }
    }

    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.azuredatabricks.net" = {
    name               = "privatelink.azuredatabricks.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.datafactory.azure.net" = {
    name               = "privatelink.datafactory.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.dev.azuresynapse.net" = {
    name               = "privatelink.dev.azuresynapse.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.dfs.core.windows.net" = {
    name               = "privatelink.dfs.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.digitaltwins.azure.net" = {
    name               = "privatelink.digitaltwins.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.documents.azure.com" = {
    name               = "privatelink.documents.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    records = {
      a_records = {
        ob-test-cosmos = {
          name    = "ob-test2-cosmos"
          ttl     = 10
          records = ["10.239.42.4"]
        }
        ob-test-cosmos-region = {
          name    = "ob-test2-cosmos-uksouth"
          ttl     = 10
          records = ["10.239.42.5"]
        }
      }
    }
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.eventgrid.azure.net" = {
    name               = "privatelink.eventgrid.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.file.core.windows.net" = {
    name               = "privatelink.file.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.gremlin.cosmos.azure.com" = {
    name               = "privatelink.gremlin.cosmos.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.guestconfiguration.azure.com" = {
    name               = "privatelink.guestconfiguration.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.his.arc.azure.com" = {
    name               = "privatelink.his.arc.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.managedhsm.azure.net" = {
    name               = "privatelink.managedhsm.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.mariadb.database.azure.com" = {
    name               = "privatelink.mariadb.database.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.media.azure.net" = {
    name               = "privatelink.media.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.mongo.cosmos.azure.com" = {
    name               = "privatelink.mongo.cosmos.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.monitor.azure.com" = {
    name               = "privatelink.monitor.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.mysql.database.azure.com" = {
    name               = "privatelink.mysql.database.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.notebooks.azure.net" = {
    name               = "privatelink.notebooks.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.ods.opinsights.azure.com" = {
    name               = "privatelink.ods.opinsights.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.oms.opinsights.azure.com" = {
    name               = "privatelink.oms.opinsights.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.postgres.database.azure.com" = {
    name               = "privatelink.postgres.database.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.purview.azure.com" = {
    name               = "privatelink.purview.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.purviewstudio.azure.com" = {
    name               = "privatelink.purviewstudio.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.queue.core.windows.net" = {
    name               = "privatelink.queue.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.redis.cache.windows.net" = {
    name               = "privatelink.redis.cache.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.redisenterprise.cache.azure.net" = {
    name               = "privatelink.redisenterprise.cache.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.search.windows.net" = {
    name               = "privatelink.search.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.service.signalr.net" = {
    name               = "privatelink.service.signalr.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.servicebus.windows.net" = {
    name               = "privatelink.servicebus.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.siterecovery.windowsazure.com" = {
    name               = "privatelink.siterecovery.windowsazure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.sql.azuresynapse.net" = {
    name               = "privatelink.sql.azuresynapse.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.table.core.windows.net" = {
    name               = "privatelink.table.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.table.cosmos.azure.com" = {
    name               = "privatelink.table.cosmos.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.vaultcore.azure.net" = {
    name               = "privatelink.vaultcore.azure.net"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        ob_test_kv = {
          name    = "ob-test2-kv"
          ttl     = 10
          records = ["10.239.39.4"]
        }
        ob_test_app_kv = {
          name    = "ob-test2-kv-app-1"
          ttl     = 10
          records = ["10.239.39.4"]
        }
      }
    }

    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.web.core.windows.net" = {
    name               = "privatelink.web.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.uksouth.azmk8s.io" = {
    name               = "privatelink.uksouth.azmk8s.io"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.ukwest.azmk8s.io" = {
    name               = "privatelink.ukwest.azmk8s.io"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.region1.backup.windowsazure.com" = {
    name               = "privatelink.region1.backup.windowsazure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.region1.batch.azure.com" = {
    name               = "privatelink.region1.batch.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.region2.azmk8s.io" = {
    name               = "privatelink.region2.azmk8s.io"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.region2.backup.windowsazure.com" = {
    name               = "privatelink.region2.backup.windowsazure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.region2.batch.azure.com" = {
    name               = "privatelink.region2.batch.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "azure-api.net" = {
    name               = "azure-api.net"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        nab-test0-apim = {
          name    = "nab-test0-apim"
          ttl     = 10
          records = ["10.206.220.5"]
        }
        cibc-dev-apim = {
          name    = "cibc-dev-apim"
          ttl     = 10
          records = ["10.245.28.6"]
        }
        nab-dev0-apim = {
          name    = "nab-dev0-apim"
          ttl     = 10
          records = ["10.206.28.5"]
        }
        nab-perf0-apim = {
          name    = "nab-perf0-apim"
          ttl     = 10
          records = ["10.206.92.5"]
        }
      }
    }

    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }

  "privatelink.azure-api.net" = {
    name               = "privatelink.azure-api.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  "privatelink.developer.azure-api.net" = {
    name               = "privatelink.developer.azure-api.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }

  # confluent-cloud cibc-sit
  "69m5qv.uksouth.azure.confluent.cloud" = {
    name               = "69m5qv.uksouth.azure.confluent.cloud"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        cibc-sit-cc = {
          name    = "*"
          ttl     = 10
          records = ["10.247.24.187"]
        }
        cibc-test-cc-zonal = {
          name    = "*.az"
          ttl     = 10
          records = ["10.247.24.187"]
        }
      }
    }
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }

# confluent cloud sre-sbox
  "p59xkv.uksouth.azure.confluent.cloud" = {
    name               = "p59xkv.uksouth.azure.confluent.cloud"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        sre-sbox-cc = {
          name    = "*"
          ttl     = 10
          records = ["10.243.0.101"]
        }
        sre-sbox-cc-zonal-1 = {
          name    = "*.az1"
          ttl     = 10
          records = ["10.243.0.101"]
        }
        sre-sbox-cc-zonal-2 = {
          name    = "*.az2"
          ttl     = 10
          records = ["10.243.0.100"]
        }
        sre-sbox-cc-zonal-3 = {
          name    = "*.az3"
          ttl     = 10
          records = ["10.243.0.10"]
        }                
      }
    }
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
  # nwb-uat-dm superset private A record to bypass Imperva DNS when connected to P81
  "nwb-uat-dm.keymate.dev" = {
    name               = "nwb-uat-dm.keymate.dev"
    resource_group_key = "dns_connectivity_non_prod"

    records = {
      a_records = {
        nwb-uat-dm-superset = {
          name    = "superset"
          ttl     = 10
          records = ["10.202.133.161"]
        }
      }
    }
    vnet_links = {
      fw_non_prod_01 = {
        name     = "fw-non_prod-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_private_dns_firewalls_non_prod"
      }
    }
  }
}