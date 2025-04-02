dynamic_keyvault_secrets = {
  dm_kv_secrets = {
    dm_dks_tenant_id = {
      output_key    = "client_config"
      resource_key  = "client_config"
      secret_name   = "tenant-id"
      attribute_key = "tenant_id"
    }
    dm_dks_subscription_id = {
      output_key    = "client_config"
      resource_key  = "client_config"
      secret_name   = "subscription-id"
      attribute_key = "subscription_id"
    }
    dm_dks_adbw_core_workspace_id = {
      output_key    = "databricks_workspaces"
      resource_key  = "dm_adbw_core_nscc"
      secret_name   = "databricks-core-workspace-id"
      attribute_key = "workspace_id"
    }
    dm_dks_adbw_core_workspace_url = {
      output_key    = "databricks_workspaces"
      resource_key  = "dm_adbw_core_nscc"
      secret_name   = "databricks-core-workspace-url"
      attribute_key = "workspace_url"
    }
    dm_dks_pgsqlf_superset_fqdn = {
      output_key    = "postgresql_flexible_servers"
      resource_key  = "dm_pgsqlf_core_superset"
      secret_name   = "pgsqlf-superset-fqdn"
      attribute_key = "postgresql_flexible_server_fqdn"
    }
    dm_dks_pgsqlf_superset_username = {
      output_key    = "postgresql_flexible_servers"
      resource_key  = "dm_pgsqlf_core_superset"
      secret_name   = "pgsqlf-superset-username"
      attribute_key = "postgresql_flexible_server_administrator_username"
    }
    dm_dks_pgsqlf_superset_password = {
      output_key    = "postgresql_flexible_servers"
      resource_key  = "dm_pgsqlf_core_superset"
      secret_name   = "pgsqlf-superset-password"
      attribute_key = "postgresql_flexible_server_administrator_password"
    }
    dm_dks_aadg_superset_admins = {
      output_key    = "azuread_groups"
      resource_key  = "dm_aadg_superset_admins"
      secret_name   = "aadg-superset-admins-gid"
      attribute_key = "id"
    }
    dm_dks_aadg_superset_alpha = {
      output_key    = "azuread_groups"
      resource_key  = "dm_aadg_superset_alpha"
      secret_name   = "aadg-superset-alpha-gid"
      attribute_key = "id"
    }
    dm_dks_aadg_superset_gamma = {
      output_key    = "azuread_groups"
      resource_key  = "dm_aadg_superset_gamma"
      secret_name   = "aadg-superset-gamma-gid"
      attribute_key = "id"
    }
    dm_dks_aadg_superset_std_read = {
      output_key    = "azuread_groups"
      resource_key  = "dm_aadg_superset_std_read"
      secret_name   = "aadg-superset-std-read-gid"
      attribute_key = "id"
    }
    dm_dks_aadg_superset_enh_read = {
      output_key    = "azuread_groups"
      resource_key  = "dm_aadg_superset_enh_read"
      secret_name   = "aadg-superset-enh-read-gid"
      attribute_key = "id"
    }
    dm_dks_dz_rg_name = {
      output_key    = "resource_groups"
      resource_key  = "dm_rg_networking"
      secret_name   = "dns-zone-core-rg-name"
      attribute_key = "name"
    }
    dm_dks_dz_core_domain = {
      output_key    = "dns_zones"
      resource_key  = "dm_dz_core"
      secret_name   = "dns-zone-core-domain-name"
      attribute_key = "name"
    }
    # TODO: Unavailable in CAF v5.6.4
    # dm_dks_redis_core_primary = {
    #   output_key    = "redis_caches"
    #   resource_key  = "redis_cache"
    #   secret_name   = "redis-access-key-core-primary"
    #   attribute_key = "primary_access_key"
    # }
    # dm_dks_redis_core_secondary = {
    #   output_key    = "redis_caches"
    #   resource_key  = "redis_cache"
    #   secret_name   = "redis-access-key-core-secondary"
    #   attribute_key = "primary_access_key"
    # }
    # dm_dks_dks_adbc_core_cluster_id = {
    #   output_key    = "cluster"
    #   resource_key  = "dm_adbc_core"
    #   secret_name   = "pol-dev-dm-dbw-core-cluster-id"
    #   attribute_key = "cluster_id"
    # }
  }
}