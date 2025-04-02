terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.9.1"
    }
  }
}

provider "vault" {
  address = var.vault_address
  token   = "XXXXXX"
}

