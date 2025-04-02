azuread_credentials = {
  nab_test0_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_databricks_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-databricks-spn"
      }
    }
  }
  nab_test0_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_aks_access_kv_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-aks-access-kv-spn"
      }
    }
  }
  nab_test0_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_aks_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-aks-spn"
      }
    }
  }
  nab_test0_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_aks_cert_manager_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-aks-cert-manager-spn"
      }
    }
  }
  nab_test0_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_aks_external_dns_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-aks-external-dns-spn"
      }
    }
  }
  nab_test0_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_aks_private_dns_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-aks-private-dns-spn"
      }
    }
  }
  nab_test0_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_piper_aks_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-piper-aks-spn"
      }
    }
  }
  nab_test0_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-piper-aks-cert-manager-spn"
      }
    }
  }
  nab_test0_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_piper_aks_external_dns_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-piper-aks-external-dns-spn"
      }
    }
  }
  nab_test0_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_piper_aks_private_dns_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-piper-aks-private-dns-spn"
      }
    }
  }
  nab_test0_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_databr_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-databr-spn"
      }
    }
  }
  nab_test0_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_hist_dataload_databr_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-hist-dataload-databr-spn"
      }
    }
  }
  nab_test0_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_adf_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-adf-spn"
      }
    }
  }
  nab_test0_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_datadogmonitor_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-datadogmonitor-spn"
      }
    }
  }
  nab_test0_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_nab_test0"

    azuread_application = {
      key = "nab_test0_databricks_spn"
    }
    keyvaults = {
      nab_test0_caf = {
        secret_prefix = "nab-test0-databricks-spn"
      }
    }
  }
}
