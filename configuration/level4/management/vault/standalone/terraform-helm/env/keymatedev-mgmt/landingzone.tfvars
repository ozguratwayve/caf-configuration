landingzone = {
  backend_type = "azurerm"
  level        = "level4"
  key          = "terraform-helm"
  tfstates = {
    management_vault_non_prod = {
      tfstate   = "management_vault_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }

    management_aks_non_prod = {
      tfstate   = "management_aks_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
# Reference the keyvault_key created in level3/management/vault. Helm needs it to unseal the key
keyvault_lz_key = "management_vault_non_prod"
keyvault_key    = "hashicorp_vault"

# Reference the AKS cluster to install the chart on
aks_lz_key = "management_aks_non_prod"
aks_key    = "management_aks"
