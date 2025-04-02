azuread_credentials = {
  tfazure_sre_sbox = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "tfazure_sre_sbox"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox"
      }
    }
  }
  sre_sbox_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_databricks_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-databricks-spn"
      }
    }
  }
  sre_sbox_aks_access_kv_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_aks_access_kv_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-aks-access-kv-spn"
      }
    }
  }
  sre_sbox_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_aks_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-aks-spn"
      }
    }
  }
  sre_sbox_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_aks_cert_manager_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-aks-cert-manager-spn"
      }
    }
  }
  sre_sbox_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_aks_external_dns_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-aks-external-dns-spn"
      }
    }
  }
  sre_sbox_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_aks_private_dns_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-aks-private-dns-spn"
      }
    }
  }
  sre_sbox_piper_aks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_piper_aks_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-piper-aks-spn"
      }
    }
  }
  sre_sbox_piper_aks_cert_manager_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_piper_aks_cert_manager_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-piper-aks-cert-manager-spn"
      }
    }
  }
  sre_sbox_piper_aks_external_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_piper_aks_external_dns_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-piper-aks-external-dns-spn"
      }
    }
  }
  sre_sbox_piper_aks_private_dns_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_piper_aks_private_dns_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-piper-aks-private-dns-spn"
      }
    }
  }
  sre_sbox_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_databr_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-databr-spn"
      }
    }
  }
  sre_sbox_hist_dataload_databr_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_hist_dataload_databr_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-hist-dataload-databr-spn"
      }
    }
  }
  sre_sbox_adf_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_adf_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-adf-spn"
      }
    }
  }
  sre_sbox_databricks_spn = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_sre_sbox"

    azuread_application = {
      key = "sre_sbox_databricks_spn"
    }
    keyvaults = {
      sre_sbox_caf = {
        secret_prefix = "sre-sbox-databricks-spn"
      }
    }
  }
}
