postgresql_flexible_servers = {
  dm_pgsqlf_core_superset = {
    name       = "core-superset"
    region     = "region1"
    version    = "13"
    sku_name   = "B_Standard_B1ms"
    storage_mb = 32768
    zone       = "1"

    resource_group = {
      key = "dm_rg_databases"
    }

    keyvault = {
      key = "dm_kv_secrets"
    }

    vnet = {
      key        = "dm_vnet_core"
      subnet_key = "dm_snet_core_pgsql_pri"
    }

    private_dns_zone = {
      key    = "privatelink.postgres.database.azure.com"
      lz_key = "connectivity_private_dns_non_prod"
    }

    postgresql_configurations = {}

    postgresql_databases = {
      dm_pgsqlf_core_db_superset = {
        name      = "superset"
        charset   = "UTF8"
        collation = "en_US.utf8"
      }
    }

    backup_retention_days = 7

    maintenance_window = {
      day_of_week  = "6"
      start_hour   = "1"
      start_minute = "00"
    }

    # high_availability = {
    #   standby_availability_zone = 2
    # }

    tags = {
      project          = "datamesh"
      landingzone      = "nab-test-dm"
      project-owners   = "pascal jerome | negar nassirpour"
      technical-owners = "platformengineering@keymate.co.uk"
    }
  }
}