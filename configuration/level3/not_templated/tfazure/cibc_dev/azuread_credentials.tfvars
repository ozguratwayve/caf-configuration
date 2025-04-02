azuread_credentials = {
  cibc_dev_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_databricks_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-databricks-spn"
      }
    }
  }
  cibc_dev_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_aks_access_kv_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-aks-access-kv-spn"
      }
    }
  }
  cibc_dev_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_aks_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-aks-spn"
      }
    }
  }
  cibc_dev_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_aks_cert_manager_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-aks-cert-manager-spn"
      }
    }
  }
  cibc_dev_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_aks_external_dns_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-aks-external-dns-spn"
      }
    }
  }
  cibc_dev_aks_oauth2_proxy_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_aks_oauth2_proxy_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-aks-oauth2-proxy-spn"
      }
    }
  }
  cibc_dev_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_aks_private_dns_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-aks-private-dns-spn"
      }
    }
  }
  cibc_dev_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_piper_aks_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-piper-aks-spn"
      }
    }
  }
  cibc_dev_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-piper-aks-cert-manager-spn"
      }
    }
  }
  cibc_dev_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_piper_aks_external_dns_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-piper-aks-external-dns-spn"
      }
    }
  }
  cibc_dev_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_piper_aks_private_dns_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-piper-aks-private-dns-spn"
      }
    }
  }
  cibc_dev_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_databr_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-databr-spn"
      }
    }
  }
  cibc_dev_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_hist_dataload_databr_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-hist-dataload-databr-spn"
      }
    }
  }
  cibc_dev_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_adf_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-adf-spn"
      }
    }
  }
  cibc_dev_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_adf_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-adf-spn"
      }
    }
  }
  cibc_dev_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_datadogmonitor_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-datadogmonitor-spn"
      }
    }
  }
  cibc_dev_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_dev"

    azuread_application = {
      key = "cibc_dev_databricks_spn"
    }
    keyvaults = {
      cibc_dev_caf = {
        secret_prefix = "cibc-dev-databricks-spn"
      }
    }
  }
}
