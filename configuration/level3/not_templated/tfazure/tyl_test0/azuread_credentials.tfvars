azuread_credentials = {
  tyl_test0_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_databricks_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-databricks-spn"
      }
    }
  }
  tyl_test0_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_aks_access_kv_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-aks-access-kv-spn"
      }
    }
  }
  tyl_test0_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_aks_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-aks-spn"
      }
    }
  }
  tyl_test0_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_aks_cert_manager_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-aks-cert-manager-spn"
      }
    }
  }
  tyl_test0_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_aks_external_dns_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-aks-external-dns-spn"
      }
    }
  }
  tyl_test0_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_aks_private_dns_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-aks-private-dns-spn"
      }
    }
  }
  tyl_test0_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_piper_aks_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-piper-aks-spn"
      }
    }
  }
  tyl_test0_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-piper-aks-cert-manager-spn"
      }
    }
  }
  tyl_test0_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_piper_aks_external_dns_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-piper-aks-external-dns-spn"
      }
    }
  }
  tyl_test0_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_piper_aks_private_dns_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-piper-aks-private-dns-spn"
      }
    }
  }
  tyl_test0_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_databr_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-databr-spn"
      }
    }
  }
  tyl_test0_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_hist_dataload_databr_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-hist-dataload-databr-spn"
      }
    }
  }
  tyl_test0_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_adf_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-adf-spn"
      }
    }
  }
  tyl_test0_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_datadogmonitor_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-datadogmonitor-spn"
      }
    }
  }
  tyl_test0_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_test0"

    azuread_application = {
      key = "tyl_test0_databricks_spn"
    }
    keyvaults = {
      tyl_test0_caf = {
        secret_prefix = "tyl-test0-databricks-spn"
      }
    }
  }
}
