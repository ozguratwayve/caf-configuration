postgresql_flexible_servers = {
  shared_services = {
    name       = "shared-services"
    region     = "region1"
    version    = "14"
    sku_name   = "B_Standard_B1ms"
    storage_mb = 32768
    zone       = "1"

    resource_group = {
      key = "shared_services_rg"
    }

    keyvault = {
      key = "shared_services_kv_secrets"
    }

    vnet = {
      key        = "shared_services_vnet_region1"
      subnet_key = "postgresql_fs"
      lz_key     = "connectivity_virtual_networks_shared_services_non_prod"
    }

    private_dns_zone = {
      key    = "privatelink.postgres.database.azure.com"
      lz_key = "connectivity_private_dns_non_prod"
    }

    postgresql_configurations = {}

    postgresql_databases = {
      backstage = {
        name      = "backstage"
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
      project          = "sharedservices"
      landingzone      = "sharedservices"
      project-owners   = "Kennedy Ikwuemesi"
      technical-owners = "platformengineering@keymate.co.uk"
    }
  }
}