settings = {
  application_name               = "cibc-dev-techops-public-spa"
  display_name                   = "Cibc Dev TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.cibc-dev.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/443a5b65-2ab6-44ef-87a0-9063211e91c8/resourceGroups/cibc-dev-kv-rg/providers/Microsoft.KeyVault/vaults/cibc-dev-kv"
}

app_config = {
  id = "/subscriptions/443a5b65-2ab6-44ef-87a0-9063211e91c8/resourceGroups/cibc-dev-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/cibc-dev-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
