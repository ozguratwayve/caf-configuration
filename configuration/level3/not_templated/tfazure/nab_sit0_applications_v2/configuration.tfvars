settings = {
  application_name               = "nab-sit0-techops-public-spa"
  display_name                   = "Nab Sit0 TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.nab-sit0.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/492af47f-e29e-4e20-ae0b-a268adc8752b/resourceGroups/nab-sit0-kv-rg/providers/Microsoft.KeyVault/vaults/nab-sit0-kv"
}

app_config = {
  id = "/subscriptions/492af47f-e29e-4e20-ae0b-a268adc8752b/resourceGroups/nab-sit0-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/nab-sit0-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
