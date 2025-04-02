azuread_groups = {
  caf_tfazure_landingzone_maintainers_non_prod = {
    name = "caf_tfazure_landingzone_maintainers_non_prod"

    members = {
      azuread_service_principal_keys = ["tfazure_gitops"]
    }

    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_cibc_dev = {
    name = "caf_tfazure_landingzone_maintainers_cibc_dev"

    members = {
      azuread_service_principal_keys = ["tfazure_cibc_dev"]
    }

    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_ob_test = {
    name = "caf_tfazure_landingzone_maintainers_ob_test"

    members = {
      azuread_service_principal_keys = ["tfazure_ob_test"]
    }

    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_engineering_subscription_stakeholders = {
    name                   = "Engineering Subscription Stakeholders"
    owners                 = ["55dad56a-03cf-4af4-925c-dd31fd3d388a"] # Kennedy Ikwuemesi
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_cibc_test = {
    name = "caf_tfazure_landingzone_maintainers_cibc_test"

    members = {
      azuread_service_principal_keys = ["tfazure_cibc_test"]
    }

    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_cibc_sit = {
    name = "caf_tfazure_landingzone_maintainers_cibc_sit"
    members = {
      azuread_service_principal_keys = ["tfazure_cibc_sit"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_cibc_dev = {
    name = "caf_tfazure_landingzone_maintainers_cibc_dev"

    members = {
      azuread_service_principal_keys = ["tfazure_cibc_dev"]
    }

    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_qa_subscription_stakeholders = {
    name                   = "QA Subscription Stakeholders"
    owners                 = ["fd648486-1b0c-4535-93f7-cb4454a3c1dd"] # Murugesh Vinod
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_nab_dev0 = {
    name = "caf_tfazure_landingzone_maintainers_nab_dev0"
    members = {
      azuread_service_principal_keys = ["tfazure_nab_dev0"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_nab_perf0 = {
    name = "caf_tfazure_landingzone_maintainers_nab_perf0"
    members = {
      azuread_service_principal_keys = ["tfazure_nab_perf0"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_nab_sit0 = {
    name = "caf_tfazure_landingzone_maintainers_nab_sit0"
    members = {
      azuread_service_principal_keys = ["tfazure_nab_sit0"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_nab_test0 = {
    name = "caf_tfazure_landingzone_maintainers_nab_test0"
    members = {
      azuread_service_principal_keys = ["tfazure_nab_test0"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_pol_dev = {
    name = "caf_tfazure_landingzone_maintainers_pol_dev"
    members = {
      azuread_service_principal_keys = ["tfazure_pol_dev"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_pol_test = {
    name = "caf_tfazure_landingzone_maintainers_pol_test"
    members = {
      azuread_service_principal_keys = ["tfazure_pol_test"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_tyl_dev0 = {
    name = "caf_tfazure_landingzone_maintainers_tyl_dev0"
    members = {
      azuread_service_principal_keys = ["tfazure_tyl_dev0"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_landingzone_maintainers_tyl_test0 = {
    name = "caf_tfazure_landingzone_maintainers_tyl_test0"
    members = {
      azuread_service_principal_keys = ["tfazure_tyl_test0"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  caf_tfazure_integration_spns = {
    name        = "caf-tfazure-integration-spns"
    description = "caf-tfazure integration service principals with Get/List permissions on tfazureshrsvc keyvault."
    members = {
      azuread_service_principal_keys = [
        "tfazure_cibc_dev_dm",
        "tfazure_cibc_sit_dm",
        "tfazure_cibc_test_dm",
        "tfazure_nab_dev_dm",
        "tfazure_nab_sit_dm",
        "tfazure_nab_test_dm",
        "tfazure_nab_perf_dm",
        "tfazure_nwb_perf_dm",
        "tfazure_nwb_test_dm",
        "tfazure_nwb_uat_dm",
        "tfazure_pol_prod_dm",
        "tfazure_pol_dev_dm",
        "tfazure_pol_poc_dm"
      ]
    }
    owners = {
      user_principal_names = [
        "antony.lehmann_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "kennedy.ikwuemesi_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    prevent_duplicate_name = true
  }
}