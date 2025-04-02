azure_container_registries = {
  acr1 = {
    name               = "tfazure-shrsvc-prod"
    resource_group_key = "tfazure_shared_svc_prod"
    sku                = "Premium"
    admin_enabled      = true
  }
}
