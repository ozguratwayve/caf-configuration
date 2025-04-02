azuread_credentials = {
  tyl_dev0_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_databricks_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-databricks-spn"
      }
    }
  }
  tyl_dev0_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_aks_access_kv_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-aks-access-kv-spn"
      }
    }
  }
  tyl_dev0_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_aks_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-aks-spn"
      }
    }
  }
  tyl_dev0_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_aks_cert_manager_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-aks-cert-manager-spn"
      }
    }
  }
  tyl_dev0_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_aks_external_dns_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-aks-external-dns-spn"
      }
    }
  }
  tyl_dev0_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_aks_private_dns_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-aks-private-dns-spn"
      }
    }
  }
  tyl_dev0_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_piper_aks_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-piper-aks-spn"
      }
    }
  }
  tyl_dev0_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-piper-aks-cert-manager-spn"
      }
    }
  }
  tyl_dev0_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_piper_aks_external_dns_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-piper-aks-external-dns-spn"
      }
    }
  }
  tyl_dev0_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_piper_aks_private_dns_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-piper-aks-private-dns-spn"
      }
    }
  }
  tyl_dev0_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_databr_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-databr-spn"
      }
    }
  }
  tyl_dev0_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_hist_dataload_databr_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-hist-dataload-databr-spn"
      }
    }
  }
  tyl_dev0_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_adf_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-adf-spn"
      }
    }
  }
  tyl_dev0_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_datadogmonitor_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-datadogmonitor-spn"
      }
    }
  }
  tyl_dev0_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_tyl_dev0"

    azuread_application = {
      key = "tyl_dev0_databricks_spn"
    }
    keyvaults = {
      tyl_dev0_caf = {
        secret_prefix = "tyl-dev0-databricks-spn"
      }
    }
  }
}
