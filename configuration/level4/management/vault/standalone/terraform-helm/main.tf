data "azurerm_client_config" "current" {}

resource "helm_release" "hashicorp_vault" {
  name       = "hashicorp-vault"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "vault"
  timeout    = 900
  namespace  = "vault"
  values = [templatefile("${path.module}/templates/values.yaml.tpl", {
    tenant_id  = data.azurerm_client_config.current.tenant_id
    vault_name = local.remote.keyvaults[var.keyvault_lz_key][var.keyvault_key].name
  })]
}
