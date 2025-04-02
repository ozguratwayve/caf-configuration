settings = {
  application_name               = "nab-perf0-techops-public-spa"
  display_name                   = "Nab Perf0 TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.nab-perf0.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/eff01273-0812-4aee-9ecb-26aa3125bbeb/resourceGroups/nab-perf0-kv-rg/providers/Microsoft.KeyVault/vaults/nab-perf0-kv"
}

app_config = {
  id = "/subscriptions/eff01273-0812-4aee-9ecb-26aa3125bbeb/resourceGroups/nab-perf0-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/nab-perf0-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
