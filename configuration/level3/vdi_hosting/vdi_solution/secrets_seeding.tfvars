dynamic_keyvault_secrets = {
  vdi_solution_kv = {
    hostpool-token = {
      # this secret is retrieved automatically from the module run output
      secret_name   = "newwvd-hostpool-token"
      output_key    = "wvd_host_pools"
      resource_key  = "wvd_hp1"
      attribute_key = "token"
    }
  }
}


