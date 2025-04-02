settings = {
  application_name               = "tyl-dev0-techops-public-spa"
  display_name                   = "Tyl Dev0 TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.tyl-dev0.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/22c1aa00-82fd-4fa7-a76c-a0c25c139973/resourceGroups/tyl-dev0-kv-rg/providers/Microsoft.KeyVault/vaults/tyl-dev0-kv"
}

app_config = {
  id = "/subscriptions/22c1aa00-82fd-4fa7-a76c-a0c25c139973/resourceGroups/tyl-dev0-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/tyl-dev0-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
