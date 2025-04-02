azuread_credentials = {
  cibc_test_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_databricks_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-databricks-spn"
      }
    }
  }
  cibc_test_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_aks_access_kv_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-aks-access-kv-spn"
      }
    }
  }
  cibc_test_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_aks_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-aks-spn"
      }
    }
  }
  cibc_test_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_aks_cert_manager_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-aks-cert-manager-spn"
      }
    }
  }
  cibc_test_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_aks_external_dns_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-aks-external-dns-spn"
      }
    }
  }
  cibc_test_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_aks_private_dns_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-aks-private-dns-spn"
      }
    }
  }
  cibc_test_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_piper_aks_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-piper-aks-spn"
      }
    }
  }
  cibc_test_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-piper-aks-cert-manager-spn"
      }
    }
  }
  cibc_test_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_piper_aks_external_dns_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-piper-aks-external-dns-spn"
      }
    }
  }
  cibc_test_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_piper_aks_private_dns_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-piper-aks-private-dns-spn"
      }
    }
  }
  cibc_test_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_databr_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-databr-spn"
      }
    }
  }
  cibc_test_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_hist_dataload_databr_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-hist-dataload-databr-spn"
      }
    }
  }
  cibc_test_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_adf_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-adf-spn"
      }
    }
  }
  cibc_test_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_datadogmonitor_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-datadogmonitor-spn"
      }
    }
  }
  cibc_test_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_test"

    azuread_application = {
      key = "cibc_test_databricks_spn"
    }
    keyvaults = {
      cibc_test_caf = {
        secret_prefix = "cibc-test-databricks-spn"
      }
    }
  }
}
