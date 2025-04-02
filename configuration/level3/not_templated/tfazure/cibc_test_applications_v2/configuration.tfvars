settings = {
  application_name               = "cibc-test-techops-public-spa"
  display_name                   = "Cibc Test TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.cibc-test.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/11da1544-d399-4830-8f9f-99801760db74/resourceGroups/cibc-test-kv-rg/providers/Microsoft.KeyVault/vaults/cibc-test-kv"
}

app_config = {
  id = "/subscriptions/11da1544-d399-4830-8f9f-99801760db74/resourceGroups/cibc-test-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/cibc-test-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
