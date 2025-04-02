azuread_credentials = {
  pol_test_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_databricks_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-databricks-spn"
      }
    }
  }
  pol_test_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_aks_access_kv_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-aks-access-kv-spn"
      }
    }
  }
  pol_test_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_aks_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-aks-spn"
      }
    }
  }
  pol_test_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_aks_cert_manager_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-aks-cert-manager-spn"
      }
    }
  }
  pol_test_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_aks_external_dns_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-aks-external-dns-spn"
      }
    }
  }
  pol_test_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_aks_private_dns_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-aks-private-dns-spn"
      }
    }
  }
  pol_test_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_piper_aks_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-piper-aks-spn"
      }
    }
  }
  pol_test_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-piper-aks-cert-manager-spn"
      }
    }
  }
  pol_test_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_piper_aks_external_dns_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-piper-aks-external-dns-spn"
      }
    }
  }
  pol_test_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_piper_aks_private_dns_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-piper-aks-private-dns-spn"
      }
    }
  }
  pol_test_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_databr_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-databr-spn"
      }
    }
  }
  pol_test_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_hist_dataload_databr_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-hist-dataload-databr-spn"
      }
    }
  }
  pol_test_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_adf_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-adf-spn"
      }
    }
  }
  pol_test_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_datadogmonitor_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-datadogmonitor-spn"
      }
    }
  }
  pol_test_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_test"

    azuread_application = {
      key = "pol_test_databricks_spn"
    }
    keyvaults = {
      pol_test_caf = {
        secret_prefix = "pol-test-databricks-spn"
      }
    }
  }
}
