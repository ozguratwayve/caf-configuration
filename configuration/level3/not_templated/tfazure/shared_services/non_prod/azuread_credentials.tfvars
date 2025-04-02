azuread_credentials = {
  tfazure_gitops = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_gitops"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "sharedsvc"
      }
    }
  }

  tfazure_cibc_dev = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_cibc_dev"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "cibc-dev"
      }
    }
  }

  tfazure_pol_prod_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_pol_prod_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "pol-prod-dm"
      }
    }
  }

  tfazure_pol_dev_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_pol_dev_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "pol-dev-dm"
      }
    }
  }

  tfazure_pol_poc_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_pol_poc_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "pol-poc-dm"
      }
    }
  }

  tfazure_cibc_dev_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_cibc_dev_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "cibc-dev-dm"
      }
    }
  }

  tfazure_cibc_sit_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_cibc_sit_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "cibc-sit-dm"
      }
    }
  }

  tfazure_cibc_test_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_cibc_test_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "cibc-test-dm"
      }
    }
  }

  tfazure_nab_dev_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_dev_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-dev-dm"
      }
    }
  }

  tfazure_nab_sit_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_sit_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-sit-dm"
      }
    }
  }

  tfazure_nab_test_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_test_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-test-dm"
      }
    }
  }
  tfazure_nab_perf_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_perf_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-perf-dm"
      }
    }
  }

  tfazure_nwb_perf_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nwb_perf_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nwb-perf-dm"
      }
    }
  }

  tfazure_nwb_test_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nwb_test_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nwb-test-dm"
      }
    }
  }

  tfazure_nwb_uat_dm = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nwb_uat_dm"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nwb-uat-dm"
      }
    }
  }

  tfazure_ob_test = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_ob_test"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "ob-test"
      }
    }
  }

  tfazure_cibc_test = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_cibc_test"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "cibc-test"
      }
    }
  }

  tfazure_cibc_sit = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_cibc_sit"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "cibc-sit"
      }
    }
  }

  tfazure_nab_dev0 = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_dev0"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-dev0"
      }
    }
  }

  tfazure_nab_perf0 = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_perf0"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-perf0"
      }
    }
  }

  tfazure_nab_sit0 = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_sit0"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-sit0"
      }
    }
  }

  tfazure_nab_test0 = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_nab_test0"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "nab-test0"
      }
    }
  }
  tfazure_pol_dev = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_pol_dev"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "pol-dev"
      }
    }
  }
  tfazure_pol_test = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_pol_test"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "pol-test"
      }
    }
  }
  tfazure_tyl_dev0 = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_tyl_dev0"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "tyl-dev0"
      }
    }
  }
  tfazure_tyl_test0 = {
    type                          = "password"
    azuread_credential_policy_key = "tfazure_gitops"

    azuread_application = {
      key = "tfazure_tyl_test0"
    }
    keyvaults = {
      tfazure_shared_svc = {
        secret_prefix = "tyl-test0"
      }
    }
  }
}