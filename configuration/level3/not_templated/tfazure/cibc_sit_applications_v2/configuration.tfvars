settings = {
  application_name               = "cibc-sit-techops-public-spa"
  display_name                   = "Cibc Sit TechOps Single Page Application v2"
  fallback_public_client_enabled = true
  single_page_application = {
    redirect_uris = [
      "https://techops.cibc-sit.keymate.dev/",
      "http://localhost:4200/"
    ]
  }
  feature_tags = {
    enterprise = true
  }
}

user_type = "user"

key_vault = {
  id = "/subscriptions/2944818d-0871-4E27-8dd3-be18998b07bd/resourceGroups/cibc-sit-kv-rg/providers/Microsoft.KeyVault/vaults/cibc-sit-kv"
}

app_config = {
  id = "/subscriptions/2944818d-0871-4E27-8dd3-be18998b07bd/resourceGroups/cibc-sit-appconfig-rg/providers/Microsoft.AppConfiguration/configurationStores/cibc-sit-appconfig"
  key_overrides = {
    client_id = {
      key = "integration-techops-api.techopsAppClientId"
    }
  }
}
