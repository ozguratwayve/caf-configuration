settings = {
  application_name               = "nab-test0-techops-public-spa"
  display_name                   = "Nab Test0 TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.nab-test0.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/56f07937-9778-4af5-9362-b99e73b8dbf2/resourceGroups/nab-test0-kv-rg/providers/Microsoft.KeyVault/vaults/nab-test0-kv"
}

app_config = {
  id = "/subscriptions/56f07937-9778-4af5-9362-b99e73b8dbf2/resourceGroups/nab-test0-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/nab-test0-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
