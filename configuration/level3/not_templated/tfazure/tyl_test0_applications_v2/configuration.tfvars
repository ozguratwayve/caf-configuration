settings = {
  application_name               = "tyl-test0-techops-public-spa"
  display_name                   = "Tyl Test0 TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.tyl-test0.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/ec427bdd-95f7-424a-9366-3171d83be397/resourceGroups/tyl-test0-kv-rg/providers/Microsoft.KeyVault/vaults/tyl-test0-kv"
}

app_config = {
  id = "/subscriptions/ec427bdd-95f7-424a-9366-3171d83be397/resourceGroups/tyl-test0-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/tyl-test0-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
