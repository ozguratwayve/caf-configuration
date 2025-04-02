azuread_credentials = {
  tfazure_loupe_prod = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "tfazure_loupe_prod"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-tf-azure"
      }
    }
  }
  loupe_prod_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "loupe_prod_aks_access_kv_spn"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-aks-access-kv-spn"
      }
    }
  }
  loupe_prod_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "loupe_prod_aks_spn"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-aks-spn"
      }
    }
  }
  loupe_prod_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "loupe_prod_aks_cert_manager_spn"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-aks-cert-manager-spn"
      }
    }
  }
  loupe_prod_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "loupe_prod_aks_external_dns_spn"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-aks-external-dns-spn"
      }
    }
  }
  loupe_prod_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "loupe_prod_aks_private_dns_spn"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-aks-private-dns-spn"
      }
    }
  }
  loupe_prod_keyvault_access_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_loupe_prod"

    azuread_application = {
      key = "loupe_prod_keyvault_access_spn"
    }
    keyvaults = {
      loupe_prod_caf = {
        secret_prefix = "loupe-prod-keyvault-access-spn"
      }
    }
  }
}
