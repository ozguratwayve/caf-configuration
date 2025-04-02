azuread_credentials = {
  ob_test_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ob_test"

    azuread_application = {
      key = "ob_test_aks_access_kv_spn"
    }
    keyvaults = {
      ob_test_caf = {
        secret_prefix = "ob-test2-aks-access-kv-spn"
      }
    }
  }
  ob_test_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ob_test"

    azuread_application = {
      key = "ob_test_aks_spn"
    }
    keyvaults = {
      ob_test_caf = {
        secret_prefix = "ob-test2-aks-spn"
      }
    }
  }
  ob_test_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ob_test"

    azuread_application = {
      key = "ob_test_aks_cert_manager_spn"
    }
    keyvaults = {
      ob_test_caf = {
        secret_prefix = "ob-test2-aks-cert-manager-spn"
      }
    }
  }
  ob_test_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ob_test"

    azuread_application = {
      key = "ob_test_aks_external_dns_spn"
    }
    keyvaults = {
      ob_test_caf = {
        secret_prefix = "ob-test2-aks-external-dns-spn"
      }
    }
  }
  ob_test_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_ob_test"

    azuread_application = {
      key = "ob_test_aks_private_dns_spn"
    }
    keyvaults = {
      ob_test_caf = {
        secret_prefix = "ob-test2-aks-private-dns-spn"
      }
    }
  }
}
