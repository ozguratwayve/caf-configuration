azurerm_redis_caches = {
  dm_redis = {
    resource_group_key = "dm_rg_caching"

    redis = {
      name                          = "core"
      capacity                      = 0
      family                        = "C"
      sku_name                      = "Basic"
      redis_version                 = "6"
      public_network_access_enabled = false
      enable_non_ssl_port           = false
      minimum_tls_version           = "1.2"

      redis_configuration = {
        enable_authentication = true
        maxmemory_policy      = "volatile-lru"
        rdb_backup_enabled    = false
        aof_backup_enabled    = false
      }

      patch_schedule = {
        day_of_week        = "Saturday"
        maintenance_window = "PT5H"
        start_hour_utc     = 0
      }
    }

    private_endpoints = {
      dm_pe_redis_core = {
        name               = "redis-core"
        resource_group_key = "dm_rg_networking"
        vnet_key           = "dm_vnet_core"
        subnet_key         = "dm_snet_core_redis_pri"

        private_service_connection = {
          name                 = "dm-plnkconn-redis-core"
          is_manual_connection = false
          subresource_names    = ["redisCache"]
        }

        private_dns = {
          keys   = ["privatelink.redis.cache.windows.net"]
          lz_key = "connectivity_private_dns_prod"
        }

      }
    }
  }
}