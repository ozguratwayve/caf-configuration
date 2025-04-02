azuread_groups = {
  dm_aadg_landingzone_readers = {
    name        = "uat-dm-landingzone-readers"
    description = "Users with Reader access to the landingzone."
    members = {
      user_principal_names = [
        "diogo.pinto_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "feroz.farooqui_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_landingzone_contributors = {
    name        = "uat-dm-landingzone-contributors"
    description = "Users with Contributor access to the landingzone."
    members = {
      user_principal_names = [
        "alex.gherasim_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_aks_admins = {
    name        = "uat-dm-aks-admins"
    description = "Users with Azure Kubernetes Admin Role access."
    members = {
      object_ids = [
        "41da7bee-0eca-4d06-a280-d9eab13ca265", # pildev-sp-caf-management [c9a79c47-1513-4830-9e7a-c1e84596afdd]
      ]
      user_principal_names = [
        "alex.gherasim_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "diogo.pinto_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_databricks_admins = {
    name        = "uat-dm-databricks-admins"
    description = "Users with Azure Databricks Admin Role access."
    members = {
      object_ids = [
        "41da7bee-0eca-4d06-a280-d9eab13ca265", # pildev-sp-caf-management [c9a79c47-1513-4830-9e7a-c1e84596afdd]
      ]
      user_principal_names = [
        "alex.gherasim_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "diogo.pinto_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_databricks_readers = {
    name        = "uat-dm-databricks-readers"
    description = "Users with Azure Databricks Reader Role access."
    members = {
      user_principal_names = [
        "alexandru.bulat_endava.com#EXT#@keymatedev.onmicrosoft.com",
        "andreea.patra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "charles.fletcher_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "feroz.farooqui_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "james.dallimore_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "mark.tefula_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "negar.nassirpour_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_superset_admins = {
    name        = "uat-dm-superset-admins"
    description = "Users with Superset Admin access."
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_superset_alpha = {
    name        = "uat-dm-superset-alpha"
    description = "Users with Superset Alpha access."
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_superset_gamma = {
    name        = "uat-dm-superset-gamma"
    description = "Users with Superset Gamma access."
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_superset_std_read = {
    name        = "uat-dm-superset-std-read"
    description = "Users with Superset Standard Read access."
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_superset_enh_read = {
    name        = "uat-dm-superset-enh-read"
    description = "Users with Superset Enhanced Read access."
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_databricks_eda_read = {
    name        = "uat-dm-databricks-eda-read"
    description = "Users with Azure Databricks Eda Read"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_databricks_bc01_read = {
    name        = "uat-dm-databricks-bc01-read"
    description = "Users with Azure Databricks BC01 Read"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "claudia.wallis_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_databricks_bc02_read = {
    name        = "uat-dm-databricks-bc02-read"
    description = "Users with Azure Databricks BC02 Read"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"

      ]
    }
    prevent_duplicate_name = true
  }
  dm_aadg_databricks_support_write = {
    name        = "uat-dm-databricks-support-write"
    description = "Users with Azure Databricks Support Write"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rich.jacobs_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }

}