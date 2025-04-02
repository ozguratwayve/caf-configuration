azuread_credentials = {
  tfazure_ace_dev = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "tfazure_ace_dev"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-tf-azure"
      }
    }
  }
  ace_dev_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "ace_dev_aks_access_kv_spn"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-aks-access-kv-spn"
      }
    }
  }
  ace_dev_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "ace_dev_aks_spn"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-aks-spn"
      }
    }
  }
  ace_dev_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "ace_dev_aks_cert_manager_spn"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-aks-cert-manager-spn"
      }
    }
  }
  ace_dev_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "ace_dev_aks_external_dns_spn"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-aks-external-dns-spn"
      }
    }
  }
  ace_dev_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "ace_dev_aks_private_dns_spn"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-aks-private-dns-spn"
      }
    }
  }
  ace_dev_keyvault_access_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ace_dev"

    azuread_application = {
      key = "ace_dev_keyvault_access_spn"
    }
    keyvaults = {
      ace_dev_caf = {
        secret_prefix = "ace-dev-keyvault-access-spn"
      }
    }
  }
}
