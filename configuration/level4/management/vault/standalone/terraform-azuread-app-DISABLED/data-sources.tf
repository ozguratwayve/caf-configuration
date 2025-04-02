data "azuread_client_config" "current" {}

data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "primary" {}

data "azurerm_management_group" "non_production" {
  name = "es-online-web"
}