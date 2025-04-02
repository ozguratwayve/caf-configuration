azuread_credentials = {
  pol_dev_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_databricks_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-databricks-spn"
      }
    }
  }
  pol_dev_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_aks_access_kv_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-aks-access-kv-spn"
      }
    }
  }
  pol_dev_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_aks_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-aks-spn"
      }
    }
  }
  pol_dev_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_aks_cert_manager_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-aks-cert-manager-spn"
      }
    }
  }
  pol_dev_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_aks_external_dns_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-aks-external-dns-spn"
      }
    }
  }
  pol_dev_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_aks_private_dns_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-aks-private-dns-spn"
      }
    }
  }
  pol_dev_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_piper_aks_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-piper-aks-spn"
      }
    }
  }
  pol_dev_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-piper-aks-cert-manager-spn"
      }
    }
  }
  pol_dev_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_piper_aks_external_dns_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-piper-aks-external-dns-spn"
      }
    }
  }
  pol_dev_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_piper_aks_private_dns_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-piper-aks-private-dns-spn"
      }
    }
  }
  pol_dev_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_databr_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-databr-spn"
      }
    }
  }
  pol_dev_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_hist_dataload_databr_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-hist-dataload-databr-spn"
      }
    }
  }
  pol_dev_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_adf_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-adf-spn"
      }
    }
  }
  pol_dev_datadogmonitor_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_datadogmonitor_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-datadogmonitor-spn"
      }
    }
  }
  pol_dev_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_pol_dev"

    azuread_application = {
      key = "pol_dev_databricks_spn"
    }
    keyvaults = {
      pol_dev_caf = {
        secret_prefix = "pol-dev-databricks-spn"
      }
    }
  }
}
