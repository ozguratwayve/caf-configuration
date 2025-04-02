settings = {
  application_name               = "pol-test-techops-public-spa"
  display_name                   = "Pol Test TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.pol-test.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/9c266e6c-1a0c-4d74-be33-6b8c11d0808f/resourceGroups/pol-test-kv-rg/providers/Microsoft.KeyVault/vaults/pol-test-kv"
}

app_config = {
  id = "/subscriptions/9c266e6c-1a0c-4d74-be33-6b8c11d0808f/resourceGroups/pol-test-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/pol-test-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
