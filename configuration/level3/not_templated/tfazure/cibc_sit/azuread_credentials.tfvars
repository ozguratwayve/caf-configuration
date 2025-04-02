azuread_credentials = {
  cibc_sit_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_databricks_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-databricks-spn"
      }
    }
  }
  cibc_sit_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_aks_access_kv_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-aks-access-kv-spn"
      }
    }
  }
  cibc_sit_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_aks_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-aks-spn"
      }
    }
  }
  cibc_sit_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_aks_cert_manager_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-aks-cert-manager-spn"
      }
    }
  }
  cibc_sit_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_aks_external_dns_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-aks-external-dns-spn"
      }
    }
  }
  cibc_sit_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_aks_private_dns_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-aks-private-dns-spn"
      }
    }
  }
  cibc_sit_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_piper_aks_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-piper-aks-spn"
      }
    }
  }
  cibc_sit_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-piper-aks-cert-manager-spn"
      }
    }
  }
  cibc_sit_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_piper_aks_external_dns_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-piper-aks-external-dns-spn"
      }
    }
  }
  cibc_sit_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_piper_aks_private_dns_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-piper-aks-private-dns-spn"
      }
    }
  }
  cibc_sit_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_databr_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-databr-spn"
      }
    }
  }
  cibc_sit_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_hist_dataload_databr_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-hist-dataload-databr-spn"
      }
    }
  }
  cibc_sit_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_adf_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-adf-spn"
      }
    }
  }
  cibc_sit_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_datadogmonitor_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-datadogmonitor-spn"
      }
    }
  }
  cibc_sit_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_cibc_sit"

    azuread_application = {
      key = "cibc_sit_databricks_spn"
    }
    keyvaults = {
      cibc_sit_caf = {
        secret_prefix = "cibc-sit-databricks-spn"
      }
    }
  }
}
