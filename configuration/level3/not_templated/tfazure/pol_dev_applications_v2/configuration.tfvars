settings = {
  application_name               = "pol-dev-techops-public-spa"
  display_name                   = "Pol Dev TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.pol-dev.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/a57c49dc-cb12-4154-bbc0-e8b352c20ca6/resourceGroups/pol-dev-kv-rg/providers/Microsoft.KeyVault/vaults/pol-dev-kv"
}

app_config = {
  id = "/subscriptions/a57c49dc-cb12-4154-bbc0-e8b352c20ca6/resourceGroups/pol-dev-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/pol-dev-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
