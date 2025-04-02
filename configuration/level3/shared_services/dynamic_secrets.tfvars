# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
dynamic_keyvault_secrets = {
  shared_services_kv_secrets = {
    backstage_secret_github = {
      secret_name = "backstage-secret-github"
      value       = ""
    }
  }
}