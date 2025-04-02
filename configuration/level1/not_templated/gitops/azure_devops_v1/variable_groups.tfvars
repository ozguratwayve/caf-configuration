variable_groups = {
  azdo_prod = {
    project_key  = "keymatedev_management"
    name         = "azdo-environment-prod"
    allow_access = true
    variables = {
      AZDO_ENVIRONMENT = "keymatehosting-prod"
    }
  }
  azdo_corp = {
    project_key  = "keymatedev_management"
    name         = "azdo-environment-corp"
    allow_access = true
    variables = {
      AZDO_ENVIRONMENT = "keymatehosting-corp"
    }
  }
  azdo_nonprod = {
    project_key  = "keymatedev_management"
    name         = "azdo-environment-nonprod"
    allow_access = true
    variables = {
      AZDO_ENVIRONMENT = "keymatehosting-nonprod"
    }
  }
  azdo_corp_auto = {
    project_key  = "keymatedev_management"
    name         = "azdo-environment-corp-auto"
    allow_access = true
    variables = {
      AZDO_ENVIRONMENT = "keymatehosting-corp-auto"
    }
  }
  azdo_nonprod_auto = {
    project_key  = "keymatedev_management"
    name         = "azdo-environment-nonprod-auto"
    allow_access = true
    variables = {
      AZDO_ENVIRONMENT = "keymatehosting-nonprod-auto"
    }
  }


  global_2203_1_keymate = {
    project_key  = "keymatedev_management"
    name         = "release-global-2203-1-keymate" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover:1.1.7-2203.2311"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://dev.azure.com/keymatedev/keymate_common/_git/caf-terraform-landingzones"
      LANDINGZONE_BRANCH  = "keymate"
      LANDINGZONE_PRIVATE = "true"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }

  global_2203_1 = {
    project_key  = "keymatedev_management"
    name         = "release-global-2203-1" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover:1.1.7-2203.2311"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://github.com/Azure/caf-terraform-landingzones.git"
      LANDINGZONE_BRANCH  = "2203.1"
      LANDINGZONE_PRIVATE = "false"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }


  global_int_5_6_0 = {
    project_key  = "keymatedev_management"
    name         = "release-global-5-6-0" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover-preview:1.3.4-2211.231309"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://github.com/Azure/caf-terraform-landingzones.git"
      LANDINGZONE_BRANCH  = "int-5.6.0"
      LANDINGZONE_PRIVATE = "false"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }

  global_int_5_7_0 = {
    project_key  = "keymatedev_management"
    name         = "release-global-5-7-0" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover:1.4.6-2306.2308"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://github.com/Azure/caf-terraform-landingzones.git"
      LANDINGZONE_BRANCH  = "int-5.7.0"
      LANDINGZONE_PRIVATE = "false"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }

  global_int_5_7_0_keymate = {
    project_key  = "keymatedev_management"
    name         = "release-global-5-7-0-keymate" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover:1.4.6-2306.2308"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://dev.azure.com/keymatedev/keymate_common/_git/caf-terraform-landingzones"
      LANDINGZONE_BRANCH  = "int-5.7.0"
      LANDINGZONE_PRIVATE = "false"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }

  global_datamesh_2203_1_v564 = {
    project_key  = "keymatedev_management"
    name         = "release-global-2203-1-dm" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover:1.1.7-2203.2311"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://dev.azure.com/keymatedev/keymate_common/_git/caf-terraform-landingzones"
      LANDINGZONE_BRANCH  = "datamesh-2203.1-v5.6.4"
      LANDINGZONE_PRIVATE = "true"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }

  global_landing_zone_afd = {
    project_key  = "keymatedev_management"
    name         = "release-global-afd" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover:1.1.7-2203.2311"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://dev.azure.com/keymatedev/keymate_common/_git/caf-terraform-landingzones"
      LANDINGZONE_BRANCH  = "feature/azure_front_door"
      LANDINGZONE_PRIVATE = "true"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }


  global_main = {
    project_key  = "keymatedev_management"
    name         = "release-global-main" # changing that name requires to change it in the devops agents yaml variables group
    allow_access = true
    variables = {
      HOME_FOLDER_USER    = "vsts_azpcontainer"
      ROVER_IMAGE         = "aztfmod/rover-preview:1.3.9-2303.090804"
      TF_CLI_ARGS         = "'-no-color'"
      TF_CLI_ARGS_init    = ""
      TF_CLI_ARGS_plan    = "'-input=false'"
      TF_VAR_ARGS_destroy = "'-auto-approve -refresh=false'"
      ENVIRONMENT         = "pildev"
      LANDINGZONE_URL     = "https://github.com/Azure/caf-terraform-landingzones.git"
      LANDINGZONE_BRANCH  = "main"
      LANDINGZONE_PRIVATE = "false"
      ROVER_RUNNER        = "true"
      ARM_USE_AZUREAD     = "true"
    }
  }


  level0 = {
    project_key  = "keymatedev_management"
    name         = "release-level0"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level0"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-level0"
    }
  }

  level1 = {
    project_key  = "keymatedev_management"
    name         = "release-level1"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level1"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-level1"
    }
  }

  level2 = {
    project_key  = "keymatedev_management"
    name         = "release-level2"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level2"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-level2"
    }
  }

  level3 = {
    project_key  = "keymatedev_management"
    name         = "release-level3"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level3"
      ARM_USE_MSI    = "true"
      # project level agent pool created manually - cirular dependencies need resolving before e2e automation can take place.
      # TODO: https://keymateonline.atlassian.net/wiki/spaces/POLPS999/pages/740032627/Azure+CAF+GitOps+AKS+Agents#Separating-L0-2-and-L3-L4-landingzone-pipelines
      AGENT_POOL = "keymatehosting-nonprod-aks-infra-shared-service-pool"
    }
  }

  level4 = {
    project_key  = "keymatedev_management"
    name         = "release-level4"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level4"
      ARM_USE_MSI    = "true"
      # project level agent pool created manually - cirular dependencies need resolving before e2e automation can take place.
      # TODO: https://keymateonline.atlassian.net/wiki/spaces/POLPS999/pages/740032627/Azure+CAF+GitOps+AKS+Agents#Separating-L0-2-and-L3-L4-landingzone-pipelines
      AGENT_POOL = "keymatehosting-nonprod-aks-infra-shared-service-pool"
    }
  }

  prod_level0 = {
    project_key  = "keymatedev_management"
    name         = "release-prod-level0"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level0"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-prod-level0"
    }
  }

  prod_level1 = {
    project_key  = "keymatedev_management"
    name         = "release-prod-level1"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level1"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-prod-level1"
    }
  }

  prod_level2 = {
    project_key  = "keymatedev_management"
    name         = "release-prod-level2"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level2"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-prod-level2"
    }
  }

  prod_level3 = {
    project_key  = "keymatedev_management"
    name         = "release-prod-level3"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level3"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-prod-level3"
    }
  }

  prod_level4 = {
    project_key  = "keymatedev_management"
    name         = "release-prod-level4"
    allow_access = true
    variables = {
      PIPELINE_LEVEL = "level4"
      ARM_USE_MSI    = "true"
      AGENT_POOL     = "gitops-prod-level4"
    }
  }


  # Pipelines requiring private repositories will need to reference this variable group
  gitops_kv_secrets = {
    project_key  = "keymatedev_management"
    name         = "gitops-kv-secrets"
    allow_access = true
    keyvault = {
      lz_key              = "launchpad_credentials"
      keyvault_key        = "cred_gitops"
      serviceendpoint_key = "keymatedev_management"
    }
    variables = {
      name = "keymatedev-git-clone-pat"
    }
  }

  # level0 Service Principals secrets
  # level0_client_id = {
  #   project_key  = "keymatedev_management"
  #   name         = "level0-sp-client-id"
  #   allow_access = true
  #   keyvault = {
  #     lz_key              = "launchpad"
  #     keyvault_key        = "level0"
  #     serviceendpoint_key = "keymatedev_management"
  #   }
  #   variables = {
  #     name = "sp-client-id"
  #   }
  # }

  # level0_client_secret = {
  #   project_key  = "keymatedev_management"
  #   name         = "level0-sp-client-secret"
  #   allow_access = true
  #   keyvault = {
  #     lz_key              = "launchpad"
  #     keyvault_key        = "level0"
  #     serviceendpoint_key = "keymatedev_management"
  #   }
  #   variables = {
  #     name = "sp-client-secret"
  #   }
  # }
}