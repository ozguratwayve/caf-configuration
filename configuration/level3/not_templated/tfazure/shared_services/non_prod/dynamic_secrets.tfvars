
# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
dynamic_keyvault_secrets = {
  tfazure_shared_svc = {
    subscription_id = {
      secret_name   = "subscription-id"
      output_key    = "client_config"
      attribute_key = "subscription_id"
    }
    tenant_id = {
      secret_name   = "tenant-id"
      output_key    = "client_config"
      attribute_key = "tenant_id"
    }
    acr_admin_username = {
      secret_name   = "acr-admin-username"
      output_key    = "azure_container_registries"
      resource_key  = "acr1"
      attribute_key = "admin_username"
    }
    # Update value manually once rover creates secret
    pat_aca_agent = {
      secret_name = "pat-aca-agent"
      value       = ""
    }
  }
}
