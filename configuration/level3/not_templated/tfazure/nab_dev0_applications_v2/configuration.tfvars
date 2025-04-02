settings = {
  application_name               = "nab-dev0-techops-public-spa"
  display_name                   = "Nab Dev0 TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.nab-dev0.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/7f21a72c-9a04-4695-97f5-dbd2c59acf1a/resourceGroups/nab-dev0-kv-rg/providers/Microsoft.KeyVault/vaults/nab-dev0-kv"
}

app_config = {
  id = "/subscriptions/7f21a72c-9a04-4695-97f5-dbd2c59acf1a/resourceGroups/nab-dev0-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/nab-dev0-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
