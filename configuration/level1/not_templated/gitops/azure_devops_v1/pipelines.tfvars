pipelines = {

  # Level0
  launchpad_credentials = {
    project_key   = "keymatedev_management"
    name          = "launchpad_credentials"
    folder        = "\\configuration\\level0\\credentials"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 9
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "launchpad_credentials",
      tfstateName                   = "launchpad_credentials.tfstate"
      configPath                    = "/configuration/level0/credentials"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level0"
      extraRoverParams              = "-launchpad"
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_corp_auto", "level0", "gitops_kv_secrets"]
  }

  launchpad = {
    project_key   = "keymatedev_management"
    name          = "launchpad"
    folder        = "\\configuration\\level0\\launchpad"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-idl0-ptp.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "launchpad",
      tfstateName                   = "caf_launchpad.tfstate"
      configPath                    = "/configuration/level0/launchpad"
      landingZonePath               = "/landingzones/caf_launchpad"
      level                         = "level0"
      extraRoverParams              = "-launchpad"
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level0"]
  }

  # Level1
  azure_devops_v1 = {
    project_key   = "keymatedev_management"
    name          = "azure_devops_v1"
    folder        = "\\configuration\\level1\\not_templated\\gitops\\azure_devops_v1"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azure_devops_v1",
      tfstateName                   = "azure_devops_v1.tfstate"
      configPath                    = "/configuration/level1/not_templated/gitops/azure_devops_v1"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_v1"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_corp", "level1", "gitops_kv_secrets"]
  }

  azure_devops_v1_pol_common = {
    project_key   = "keymatedev_management"
    name          = "azure_devops_v1_pol_common"
    folder        = "\\configuration\\level1\\not_templated\\gitops\\azure_devops_v1_pol_common"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azure_devops_v1_pol_common",
      tfstateName                   = "azure_devops_v1_pol_common.tfstate"
      configPath                    = "/configuration/level1/not_templated/gitops/azure_devops_v1_pol_common"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_v1"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  gitops_credentials = {
    project_key   = "keymatedev_management"
    name          = "gitops_credentials"
    folder        = "\\configuration\\level1\\not_templated\\gitops\\credentials"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_credentials",
      tfstateName                   = "gitops_credentials.tfstate"
      configPath                    = "/configuration/level1/not_templated/gitops/credentials"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  azure_devops_agents_vm = {
    project_key   = "keymatedev_management"
    name          = "azure_devops_agents_vm"
    folder        = "\\configuration\\level1\\not_templated\\gitops\\azure_devops_agents_vm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azdo-agent-levels",
      tfstateName                   = "azure_devops_agents_vm.tfstate"
      configPath                    = "/configuration/level1/not_templated/gitops/azure_devops_agents_vm"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_agent"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "false"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  gitops_connectivity = {
    project_key   = "keymatedev_management"
    name          = "gitops_connectivity"
    folder        = "\\configuration\\level1\\not_templated\\gitops\\gitops_connectivity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_connectivity",
      tfstateName                   = "gitops_connectivity.tfstate"
      configPath                    = "/configuration/level1/not_templated/gitops/gitops_connectivity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  azdo_agents_vm_prod = {
    project_key   = "keymatedev_management"
    name          = "azdo_agents_vm_prod"
    folder        = "\\configuration\\level1\\not_templated\\gitops\\azure_devops_agents_vm\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatehosting.com
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azdo_agents_vm_prod",
      tfstateName                   = "azdo_agents_vm_prod.tfstate"
      configPath                    = "/configuration/level1/not_templated/gitops/azure_devops_agents_vm/prod"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_agent"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "false"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  alz_es = {
    project_key   = "keymatedev_management"
    name          = "alz_es"
    folder        = "\\configuration\\level1\\alz\\es"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-es-qaj.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "alz_es",
      tfstateName                   = "alz_es.tfstate"
      configPath                    = "/configuration/level1/alz/es"
      landingZonePath               = "/landingzones/caf_solution/add-ons/caf_eslz"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  identity = {
    project_key   = "keymatedev_management"
    name          = "identity"
    folder        = "\\configuration\\level1\\identity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "identity",
      tfstateName                   = "identity.tfstate"
      configPath                    = "/configuration/level1/identity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  not_templated_identity = {
    project_key   = "keymatedev_management"
    name          = "identity"
    folder        = "\\configuration\\level1\\not_templated\\identity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "not_templated_identity",
      tfstateName                   = "not_templated_identity.tfstate"
      configPath                    = "/configuration/level1/not_templated/identity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  management = {
    project_key   = "keymatedev_management"
    name          = "management"
    folder        = "\\configuration\\level1\\management"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "management",
      tfstateName                   = "management.tfstate"
      configPath                    = "/configuration/level1/management"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  subscriptions = {
    project_key   = "keymatedev_management"
    name          = "subscriptions"
    folder        = "\\configuration\\level1\\subscriptions"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "subscriptions",
      tfstateName                   = "subscriptions.tfstate"
      configPath                    = "/configuration/level1/subscriptions"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level1"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level1"]
  }

  # Level2
  azurerm_firewall_policies = {
    project_key   = "keymatedev_management"
    name          = "azurerm_firewall_policies"
    folder        = "\\configuration\\level2\\connectivity\\azurerm_firewall_policies\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_firewall_policies_non_prod",
      tfstateName                   = "connectivity_firewall_policies_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/azurerm_firewall_policies/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  azurerm_firewall_policies_prod = {
    project_key   = "keymatedev_management"
    name          = "azurerm_firewall_policies_prod"
    folder        = "\\configuration\\level2\\connectivity\\azurerm_firewall_policies\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_firewall_policies_prod",
      tfstateName                   = "connectivity_firewall_policies_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/azurerm_firewall_policies/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  management_purview = {
    project_key   = "keymatedev_management"
    name          = "management_purview"
    folder        = "\\configuration\\level2\\management\\purview"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "4cd379eb-f224-4866-83d3-bf135e5131fa" # keymatedev-caf-data-management
      landingZoneName               = "management_purview",
      tfstateName                   = "management_purview.tfstate"
      configPath                    = "/configuration/level2/management/purview"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_7_0", "azdo_nonprod", "level2", "gitops_kv_secrets"]
  }

  private_dns = {
    project_key   = "keymatedev_management"
    name          = "private_dns"
    folder        = "\\configuration\\level2\\connectivity\\private_dns\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_private_dns_non_prod",
      tfstateName                   = "connectivity_private_dns_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/private_dns/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  private_dns_prod = {
    project_key   = "keymatedev_management"
    name          = "private_dns_prod"
    folder        = "\\configuration\\level2\\connectivity\\private_dns\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_private_dns_prod",
      tfstateName                   = "connectivity_private_dns_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/private_dns/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  public_dns = {
    project_key   = "keymatedev_management"
    name          = "public_dns"
    folder        = "\\configuration\\level2\\connectivity\\public_dns"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_public_dns",
      tfstateName                   = "connectivity_public_dns.tfstate"
      configPath                    = "/configuration/level2/connectivity/public_dns"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_7_0", "azdo_corp", "level2"]
  }


  private_dns_firewall = {
    project_key   = "keymatedev_management"
    name          = "private_dns_firewall"
    folder        = "\\configuration\\level2\\connectivity\\private_dns_firewall\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_private_dns_firewalls_non_prod",
      tfstateName                   = "connectivity_private_dns_firewalls_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/private_dns_firewalls/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  private_dns_firewall_prod = {
    project_key   = "keymatedev_management"
    name          = "private_dns_firewall_prod"
    folder        = "\\configuration\\level2\\connectivity\\private_dns_firewall\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_private_dns_firewalls_prod",
      tfstateName                   = "connectivity_private_dns_firewalls_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/private_dns_firewalls/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  secure_firewalls = {
    project_key   = "keymatedev_management"
    name          = "secure_firewalls"
    folder        = "\\configuration\\level2\\connectivity\\secure_firewalls\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_secure_firewalls_non_prod",
      tfstateName                   = "connectivity_secure_firewalls_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/secure_firewalls/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  secure_firewalls_prod = {
    project_key   = "keymatedev_management"
    name          = "secure_firewalls_prod"
    folder        = "\\configuration\\level2\\connectivity\\secure_firewalls\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_secure_firewalls_prod",
      tfstateName                   = "connectivity_secure_firewalls_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/secure_firewalls/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  virtual_hubs = {
    project_key   = "keymatedev_management"
    name          = "virtual_hubs"
    folder        = "\\configuration\\level2\\connectivity\\virtual_hubs\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_hubs_non_prod",
      tfstateName                   = "connectivity_virtual_hubs_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_hubs/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  virtual_hubs_prod = {
    project_key   = "keymatedev_management"
    name          = "virtual_hubs_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_hubs\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "keymatedev-management"              # keymatedev-management
      landingZoneName               = "connectivity_virtual_hubs_prod",
      tfstateName                   = "connectivity_virtual_hubs_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_hubs/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  virtual_hubs_route_tables = {
    project_key   = "keymatedev_management"
    name          = "virtual_hubs_route_tables"
    folder        = "\\configuration\\level2\\connectivity\\virtual_hubs_route_tables\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "virtual_hubs_route_tables_non_prod",
      tfstateName                   = "connectivity_virtual_hubs_route_tables_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_hubs_route_tables/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  virtual_hubs_route_tables_prod = {
    project_key   = "keymatedev_management"
    name          = "virtual_hubs_route_tables_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_hubs_route_tables\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "virtual_hubs_route_tables_prod",
      tfstateName                   = "connectivity_virtual_hubs_route_tables_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_hubs_route_tables/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  connectivity_virtual_networks_gitops_non_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_gitops_non_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\gitops\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_networks_gitops_non_prod",
      tfstateName                   = "connectivity_virtual_networks_gitops_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/gitops/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  connectivity_virtual_networks_gitops_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_gitops_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\gitops\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_networks_gitops_prod",
      tfstateName                   = "connectivity_virtual_networks_gitops_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/gitops/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "prod_level2"]
  }

  connectivity_virtual_networks_management_non_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_management_non_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\management\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_networks_management_non_prod",
      tfstateName                   = "connectivity_virtual_networks_management_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/management/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  connectivity_virtual_networks_management_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_management_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\management\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_networks_management_prod",
      tfstateName                   = "connectivity_virtual_networks_management_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/management/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  connectivity_virtual_networks_data_management = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_data_management"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\management\\data_management"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "4cd379eb-f224-4866-83d3-bf135e5131fa" # keymatedev-caf-data-management
      landingZoneName               = "connectivity_virtual_networks_data_management",
      tfstateName                   = "connectivity_virtual_networks_data_management.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/management/data_management"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  connectivity_virtual_networks_shared_services_non_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_shared_services_non_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\shared_services\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0b1721ec-b6df-477a-9775-cefc9cfa984f" # keymatedev-caf-shared-services
      landingZoneName               = "connectivity_virtual_networks_shared_services_non_prod",
      tfstateName                   = "connectivity_virtual_networks_shared_services_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/shared_services/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  connectivity_virtual_networks_regional_databricks = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_regional_databricks"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\regional_databricks"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_networks_management_regional_databricks",
      tfstateName                   = "connectivity_virtual_networks_management_regional_databricks.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/management/regional_databricks"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  identity_level2_management_non_prod = {
    project_key   = "keymatedev_management"
    name          = "identity_level2_management_non_prod"
    folder        = "\\configuration\\level2\\identity\\management\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "identity_level2_management_non_prod",
      tfstateName                   = "identity_level2_management_non_prod.tfstate"
      configPath                    = "/configuration/level2/identity/management/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  identity_level2_management_prod = {
    project_key   = "keymatedev_management"
    name          = "identity_level2_management_prod"
    folder        = "\\configuration\\level2\\identity\\management\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "identity_level2_management_prod",
      tfstateName                   = "identity_level2_management_prod.tfstate"
      configPath                    = "/configuration/level2/identity/management/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  virtual_wans = {
    project_key   = "keymatedev_management"
    name          = "virtual_wans"
    folder        = "\\configuration\\level2\\connectivity\\virtual_wans"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_virtual_wans_prod",
      tfstateName                   = "connectivity_virtual_wans_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_wans"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  asvm = {
    project_key   = "keymatedev_management"
    name          = "asvm"
    folder        = "\\configuration\\level2\\asvm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-idl0-ptp.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "asvm",
      tfstateName                   = "asvm_subscription_vending_machine.tfstate"
      configPath                    = "/configuration/level2/asvm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  asvm_sp = {
    project_key   = "keymatedev_management"
    name          = "subscription_cp"
    folder        = "\\configuration\\level2\\not_templated\\asvm_custom"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "subscription_sp",
      tfstateName                   = "susbcription_sp.tfstate"
      configPath                    = "/configuration/level2/not_templated/asvm_custom"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  identity_level2_non_prod = {
    project_key   = "keymatedev_management"
    name          = "identity_level2_non_prod"
    folder        = "\\configuration\\level2\\identity\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "identity_level2_non_prod",
      tfstateName                   = "identity_level2_non_prod.tfstate"
      configPath                    = "/configuration/level2/identity/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  identity_level2_prod = {
    project_key   = "keymatedev_management"
    name          = "identity_level2_prod"
    folder        = "\\configuration\\level2\\identity\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "identity_level2_prod",
      tfstateName                   = "identity_level2_prod.tfstate"
      configPath                    = "/configuration/level2/identity/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  tfazure_connectivity = {
    project_key   = "keymatedev_management"
    name          = "tfazure_connectivity"
    folder        = "\\configuration\\level2\\not_templated\\tfazure\\connectivity\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "tfazure_connectivity",
      tfstateName                   = "tfazure_connectivity.tfstate"
      configPath                    = "/configuration/level2/not_templated/tfazure/connectivity/"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  tfazure_connectivity_prod = {
    project_key   = "keymatedev_management"
    name          = "tfazure_connectivity_prod"
    folder        = "\\configuration\\level2\\not_templated\\tfazure\\connectivity\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "tfazure_connectivity_prod",
      tfstateName                   = "tfazure_connectivity_prod.tfstate"
      configPath                    = "/configuration/level2/not_templated/tfazure/connectivity_prod/"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "prod_level2"]
  }

  connectivity_virtual_networks_vdi_hosting_privileged_non_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_vdi_hosting_privileged_non_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\vdi_hosting\\non_prod\\privileged"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "1cd62118-56dc-452c-afd7-256f8075b6d7" # vdi_hosting
      landingZoneName               = "connectivity_virtual_networks_vdi_hosting_privileged_non_prod",
      tfstateName                   = "connectivity_virtual_networks_vdi_hosting_privileged_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/vdi_hosting/non_prod/privileged"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  connectivity_virtual_networks_vdi_hosting_non_prod = {
    project_key   = "keymatedev_management"
    name          = "connectivity_virtual_networks_vdi_hosting_non_prod"
    folder        = "\\configuration\\level2\\connectivity\\virtual_networks\\vdi_hosting\\non_prod\\non_privileged"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-co-cge.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "1cd62118-56dc-452c-afd7-256f8075b6d7" # vdi_hosting
      landingZoneName               = "connectivity_virtual_networks_vdi_hosting_non_prod",
      tfstateName                   = "connectivity_virtual_networks_vdi_hosting_non_prod.tfstate"
      configPath                    = "/configuration/level2/connectivity/virtual_networks/vdi_hosting/non_prod/non_privileged"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  identity_level2_vdi_hosting_non_prod = {
    project_key   = "keymatedev_management"
    name          = "identity_level2_vdi_hosting_non_prod"
    folder        = "\\configuration\\level2\\identity\\vdi_hosting\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-id-vuy.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "identity_level2_vdi_hosting_non_prod",
      tfstateName                   = "identity_level2_vdi_hosting_non_prod.tfstate"
      configPath                    = "/configuration/level2/identity/vdi_hosting/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  gitops_aks_identity = {
    project_key   = "keymatedev_management"
    name          = "gitops_aks_identity"
    folder        = "\\configuration\\level2\\gitops\\identity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_aks_identity",
      tfstateName                   = "gitops_aks_identity.tfstate"
      configPath                    = "/configuration/level2/gitops/identity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  gitops_aks_identity_prod = {
    project_key   = "keymatedev_management"
    name          = "gitops_aks_identity_prod"
    folder        = "\\configuration\\level2\\gitops\\prod\\identity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_aks_identity_prod",
      tfstateName                   = "gitops_aks_identity_prod.tfstate"
      configPath                    = "/configuration/level2/gitops/prod/identity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  azure_devops_v1_albumeradev = {
    project_key   = "keymatedev_management"
    name          = "azure_devops_v1_albumeradev"
    folder        = "\\configuration\\level2\\gitops\\azure_devops_v1_albumeradev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azure_devops_v1_albumeradev",
      tfstateName                   = "azure_devops_v1_albumeradev.tfstate"
      configPath                    = "/configuration/level2/gitops/azure_devops_v1_albumeradev"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_v1"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  azure_devops_v1_albumeradev_prod = {
    project_key   = "keymatedev_management"
    name          = "azure_devops_v1_albumeradev_prod"
    folder        = "\\configuration\\level2\\gitops\\prod\\azure_devops_v1_albumeradev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azure_devops_v1_albumeradev_prod",
      tfstateName                   = "azure_devops_v1_albumeradev_prod.tfstate"
      configPath                    = "/configuration/level2/gitops/prod/azure_devops_v1_albumeradev"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_v1"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  azure_devops_v1_keymatedev = {
    project_key   = "keymatedev_management"
    name          = "azure_devops_v1_keymatedev"
    folder        = "\\configuration\\level2\\gitops\\azure_devops_v1_keymatedev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azure_devops_v1_keymatedev",
      tfstateName                   = "azure_devops_v1_keymatedev.tfstate"
      configPath                    = "/configuration/level2/gitops/azure_devops_v1_keymatedev"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_v1"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  gitops_aks = {
    project_key   = "keymatedev_management"
    name          = "gitops_aks"
    folder        = "\\configuration\\level2\\gitops\\aks"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_aks",
      tfstateName                   = "gitops_aks.tfstate"
      configPath                    = "/configuration/level2/gitops/aks"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "level2"]
  }

  gitops_aks_prod = {
    project_key   = "keymatedev_management"
    name          = "gitops_aks_prod"
    folder        = "\\configuration\\level2\\gitops\\prod\\aks"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_aks_prod",
      tfstateName                   = "gitops_aks_prod.tfstate"
      configPath                    = "/configuration/level2/gitops/prod/aks"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_corp", "prod_level2"]
  }

  gitops_virtual_networks = {
    project_key   = "keymatedev_management"
    name          = "gitops_virtual_networks"
    folder        = "\\configuration\\level2\\gitops\\virtual_networks"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_virtual_networks",
      tfstateName                   = "gitops_virtual_networks.tfstate"
      configPath                    = "/configuration/level2/gitops/virtual_networks"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level2"]
  }

  gitops_virtual_networks_prod = {
    project_key   = "keymatedev_management"
    name          = "gitops_virtual_networks_prod"
    folder        = "\\configuration\\level2\\gitops\\prod\\virtual_networks"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "gitops_virtual_networks_prod",
      tfstateName                   = "gitops_virtual_networks_prod.tfstate"
      configPath                    = "/configuration/level2/gitops/prod/virtual_networks"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "prod_level2"]
  }

  connectivity_azure_front_door = {
    project_key   = "keymatedev_management"
    name          = "connectivity_azure_front_door"
    folder        = "\\configuration\\level2\\connectivity\\front_door"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_azure_front_door"
      tfstateName                   = "connectivity_azure_front_door.tfstate"
      configPath                    = "/configuration/level2/connectivity/front_door"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level2"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_landing_zone_afd", "azdo_corp", "level2", "gitops_kv_secrets"]
  }

  # Level3
  sre_sbox = {
    project_key   = "keymatedev_management"
    name          = "sre_sbox"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\sre_sbox"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "858a138f-500a-4fdd-ab1a-1a54a59d0abd" # keymate-sandpit-sre
      landingZoneName               = "sre_sbox",
      tfstateName                   = "sre_sbox.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/sre_sbox"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  cibc_dev = {
    project_key   = "keymatedev_management"
    name          = "cibc_dev"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\cibc_dev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "443a5b65-2ab6-44ef-87a0-9063211e91c8" # cibc-dev
      landingZoneName               = "cibc_dev",
      tfstateName                   = "cibc_dev.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/cibc_dev"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  # deploys techops spn using azuread v2 provider
  cibc_dev_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "cibc_dev_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\cibc_dev_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "443a5b65-2ab6-44ef-87a0-9063211e91c8" # cibc-dev
      landingZoneName               = "cibc_dev_applications_v2",
      tfstateName                   = "cibc_dev_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/cibc_dev_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  ## Datamesh Pipelines
  # Level3
  connectivity_dm = {
    project_key   = "keymatedev_management"
    name          = "connectivity-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\connectivity-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "connectivity_dm",
      tfstateName                   = "connectivity_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/connectivity-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  pol_poc_dm = {
    project_key   = "keymatedev_management"
    name          = "pol-poc-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\pol-poc-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "a6e36c1a-2761-467f-a7b8-70cedc1993e3" # pol-poc-dm
      landingZoneName               = "pol_poc_dm",
      tfstateName                   = "pol_poc_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/pol-poc-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  pol_dev_dm = {
    project_key   = "keymatedev_management"
    name          = "pol-dev-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\pol-dev-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "bf713c74-f65e-4403-90d1-184cc5bbb52d" # pol-dev-dm
      landingZoneName               = "pol_dev_dm",
      tfstateName                   = "pol_dev_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/pol-dev-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  pol_prod_dm = {
    project_key   = "keymatedev_management"
    name          = "pol-prod-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\pol-prod-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "40c10189-007b-49a9-88eb-8ed1306b1627" # pol-prod-dm
      landingZoneName               = "pol_prod_dm",
      tfstateName                   = "pol_prod_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/pol-prod-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_prod", "prod_level3", "gitops_kv_secrets"]
  }

  # Level3
  nwb_test_dm = {
    project_key   = "keymatedev_management"
    name          = "nwb-test-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nwb-test-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0bb532f3-4c7c-4937-be02-4e9b6c162f93" # nwb-test-dm
      landingZoneName               = "nwb_test_dm",
      tfstateName                   = "nwb_test_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nwb-test-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  nwb_perf_dm = {
    project_key   = "keymatedev_management"
    name          = "nwb-perf-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nwb-perf-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "5fd4d674-227e-48ce-9f9d-b0dc3e5e78f8" # nwb-perf-dm
      landingZoneName               = "nwb_perf_dm",
      tfstateName                   = "nwb_perf_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nwb-perf-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  nwb_uat_dm = {
    project_key   = "keymatedev_management"
    name          = "nwb-uat-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nwb-uat-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "907fdf9f-0793-4c9e-bb11-11ac3601dc35" # nwb-uat-dm
      landingZoneName               = "nwb_uat_dm",
      tfstateName                   = "nwb_uat_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nwb-uat-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  nab_dev_dm = {
    project_key   = "keymatedev_management"
    name          = "nab-dev-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nab-dev-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0e44961b-5d2a-4205-a9d9-222d60f02837" # nab-dev-dm
      landingZoneName               = "nab_dev_dm",
      tfstateName                   = "nab_dev_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nab-dev-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  nab_sit_dm = {
    project_key   = "keymatedev_management"
    name          = "nab-sit-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nab-sit-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "3bcb32fa-669a-40bd-a445-c4ada417bf21" # nab-sit-dm
      landingZoneName               = "nab_sit_dm",
      tfstateName                   = "nab_sit_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nab-sit-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  nab_test_dm = {
    project_key   = "keymatedev_management"
    name          = "nab-test-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nab-test-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "b2e887c1-f61a-4ac3-9dae-8b9a24da3972" # nab-test-dm
      landingZoneName               = "nab_test_dm",
      tfstateName                   = "nab_test_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nab-test-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  nab_perf_dm = {
    project_key   = "keymatedev_management"
    name          = "nab-perf-dm"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\datamesh\\nab-perf-dm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "b6d81e15-d668-4e5b-8d18-dcb233c86431" # nab-perf-dm
      landingZoneName               = "nab_perf_dm",
      tfstateName                   = "nab_perf_dm.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/datamesh/nab-perf-dm"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_datamesh_2203_1_v564", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  # Level3
  shared_services_caf = {
    project_key   = "keymatedev_management"
    name          = "shared_services"
    folder        = "\\configuration\\level3\\shared_services"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0b1721ec-b6df-477a-9775-cefc9cfa984f" # keymatedev-caf-shared-services
      landingZoneName               = "shared_services",
      tfstateName                   = "shared_services.tfstate"
      configPath                    = "/configuration/level3/shared_services"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_7_0", "azdo_nonprod_auto", "level3"]
  }

  # Level3
  shared_services_identity = {
    project_key   = "keymatedev_management"
    name          = "shared_services_identity"
    folder        = "\\configuration\\level3\\shared_services\\identity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0b1721ec-b6df-477a-9775-cefc9cfa984f" # keymatedev-caf-shared-services
      landingZoneName               = "shared_services_identity",
      tfstateName                   = "shared_services_identity.tfstate"
      configPath                    = "/configuration/level3/shared_services/identity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_7_0", "azdo_nonprod_auto", "level3"]
  }

  # Level3
  shared_services_connectivity_caf = {
    project_key   = "keymatedev_management"
    name          = "shared_services_connectivity"
    folder        = "\\configuration\\level3\\shared_services\\connectivity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "shared_services_connectivity",
      tfstateName                   = "shared_services_connectivity.tfstate"
      configPath                    = "/configuration/level3/shared_services/connectivity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_7_0", "azdo_nonprod_auto", "level3"]
  }

  # Level3
  ob_test = {
    project_key   = "keymatedev_management"
    name          = "ob_test"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\ob_test"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "4e5213b8-8a12-4485-ad08-4f6bb4ec4037" # keymatedev-ob-test
      landingZoneName               = "ob_test",
      tfstateName                   = "ob_test.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/ob_test"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  shared_services = {
    project_key   = "keymatedev_management"
    name          = "shared_services"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\shared_services\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "7c224083-e8f3-43c2-8519-420301edd1d4" # keymatedev-tfazure-shared-services
      landingZoneName               = "tfazure_shared_svc",
      tfstateName                   = "tfazure_shared_svc.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/shared_services/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  shared_services_connectivity = {
    project_key   = "keymatedev_management"
    name          = "shared_services_connectivity"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\shared_services\\non_prod\\connectivity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "tfazure_shared_svc_connectivity",
      tfstateName                   = "tfazure_shared_svc_connectivity.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/shared_services/non_prod/connectivity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp_auto", "level3"]
  }

  # deploys aca agents
  shared_services_aca = {
    project_key   = "keymatedev_management"
    name          = "shared_services_aca"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\shared_services\\non_prod\\azure_container_apps"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "7c224083-e8f3-43c2-8519-420301edd1d4" # keymatedev-tfazure-shared-services
      landingZoneName               = "tfazure_shared_svc_aca",
      tfstateName                   = "tfazure_shared_svc_aca.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/shared_services/non_prod/azure_container_apps"
      landingZonePath               = "/keymate-custom-caf-modules/modules/aca"
      level                         = "level3"
      extraRoverParams              = ""
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  shared_services_azdo = {
    project_key   = "keymatedev_management"
    name          = "shared_services_azdo"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\shared_services\\non_prod\\azure_devops"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "7c224083-e8f3-43c2-8519-420301edd1d4" # keymatedev-tfazure-shared-services
      landingZoneName               = "tfazure_shared_svc_azdo",
      tfstateName                   = "tfazure_shared_svc_azdo.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/shared_services/non_prod/azure_devops"
      landingZonePath               = "/landingzones/caf_solution/add-ons/azure_devops_v1"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3", "gitops_kv_secrets"]
  }

  shared_services_prod = {
    project_key   = "keymatedev_management"
    name          = "shared_services_prod"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\shared_services\\prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "7c224083-e8f3-43c2-8519-420301edd1d4" # keymatedev-tfazure-shared-services
      landingZoneName               = "tfazure_shared_svc_prod",
      tfstateName                   = "tfazure_shared_svc_prod.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/shared_services/prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_prod", "level3"]
  }

  shared_services_prod_connectivity = {
    project_key   = "keymatedev_management"
    name          = "shared_services_prod_connectivity"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\shared_services\\prod\\connectivity"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "tfazure_shared_svc_prod_connectivity",
      tfstateName                   = "tfazure_shared_svc_prod_connectivity.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/shared_services/prod/connectivity"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp_auto", "level3"]
  }

  cibc_test = {
    project_key   = "keymatedev_management"
    name          = "cibc_test"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\cibc_test"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "11da1544-d399-4830-8f9f-99801760db74" # cibc-test
      landingZoneName               = "cibc_test",
      tfstateName                   = "cibc_test.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/cibc_test"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  # deploys techops spn using azuread v2 provider
  cibc_test_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "cibc_test_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\cibc_test_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "11da1544-d399-4830-8f9f-99801760db74" # cibc-test
      landingZoneName               = "cibc_test_applications_v2",
      tfstateName                   = "cibc_test_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/cibc_test_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  nab_dev0 = {
    project_key   = "keymatedev_management"
    name          = "nab_dev0"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_dev0"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "7f21a72c-9a04-4695-97f5-dbd2c59acf1a" # nab-dev0
      landingZoneName               = "nab_dev0",
      tfstateName                   = "nab_dev0.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/nab_dev0"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  nab_dev0_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "nab_dev0_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_dev0_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "7f21a72c-9a04-4695-97f5-dbd2c59acf1a" # nab-dev0
      landingZoneName               = "nab_dev0_applications_v2",
      tfstateName                   = "nab_dev0_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/nab_dev0_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  nab_test0 = {
    project_key   = "keymatedev_management"
    name          = "nab_test0"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_test0"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "56f07937-9778-4af5-9362-b99e73b8dbf2" # nab-test0
      landingZoneName               = "nab_test0",
      tfstateName                   = "nab_test0.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/nab_test0"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  nab_test0_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "nab_test0_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_test0_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "56f07937-9778-4af5-9362-b99e73b8dbf2" # nab-test0
      landingZoneName               = "nab_test0_applications_v2",
      tfstateName                   = "nab_test0_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/nab_test0_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  nab_perf0 = {
    project_key   = "keymatedev_management"
    name          = "nab_perf0"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_perf0"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "eff01273-0812-4aee-9ecb-26aa3125bbeb" # nab-perf0
      landingZoneName               = "nab_perf0",
      tfstateName                   = "nab_perf0.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/nab_perf0"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }
  nab_perf0_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "nab_perf0_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_perf0_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "eff01273-0812-4aee-9ecb-26aa3125bbeb" # nab-perf0
      landingZoneName               = "nab_perf0_applications_v2",
      tfstateName                   = "nab_perf0_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/nab_perf0_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }
  nab_sit0 = {
    project_key   = "keymatedev_management"
    name          = "nab_sit0"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_sit0"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "492af47f-e29e-4e20-ae0b-a268adc8752b" # nab-sit0
      landingZoneName               = "nab_sit0",
      tfstateName                   = "nab_sit0.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/nab_sit0"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }
  nab_sit0_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "nab_sit0_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\nab_sit0_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "492af47f-e29e-4e20-ae0b-a268adc8752b" # nab-sit0
      landingZoneName               = "nab_sit0_applications_v2",
      tfstateName                   = "nab_sit0_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/nab_sit0_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  pol_dev = {
    project_key   = "keymatedev_management"
    name          = "pol_dev"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\pol_dev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "a57c49dc-cb12-4154-bbc0-e8b352c20ca6" # pol-dev
      landingZoneName               = "pol_dev",
      tfstateName                   = "pol_dev.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/pol_dev"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  pol_dev_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "pol_dev_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\pol_dev_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "a57c49dc-cb12-4154-bbc0-e8b352c20ca6" # pol-dev
      landingZoneName               = "pol_dev_applications_v2",
      tfstateName                   = "pol_dev_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/pol_dev_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  pol_test = {
    project_key   = "keymatedev_management"
    name          = "pol_test"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\pol_test"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "9c266e6c-1a0c-4d74-be33-6b8c11d0808f" # pol-test
      landingZoneName               = "pol_test",
      tfstateName                   = "pol_test.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/pol_test"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  pol_test_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "pol_test_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\pol_test_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "9c266e6c-1a0c-4d74-be33-6b8c11d0808f" # pol-test
      landingZoneName               = "pol_test_applications_v2",
      tfstateName                   = "pol_test_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/pol_test_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  tyl_dev0 = {
    project_key   = "keymatedev_management"
    name          = "tyl_dev0"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\tyl_dev0"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "22c1aa00-82fd-4fa7-a76c-a0c25c139973" # tyl-dev0
      landingZoneName               = "tyl_dev0",
      tfstateName                   = "tyl_dev0.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/tyl_dev0"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  tyl_dev0_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "tyl_dev0_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\tyl_dev0_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "22c1aa00-82fd-4fa7-a76c-a0c25c139973" # tyl-dev0
      landingZoneName               = "tyl_dev0_applications_v2",
      tfstateName                   = "tyl_dev0_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/tyl_dev0_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  tyl_test0 = {
    project_key   = "keymatedev_management"
    name          = "tyl_test0"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\tyl_test0"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "ec427bdd-95f7-424a-9366-3171d83be397" # tyl-test0
      landingZoneName               = "tyl_test0",
      tfstateName                   = "tyl_test0.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/tyl_test0"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  tyl_test0_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "tyl_test0_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\tyl_test0_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    schedules = {
      week_days = {
        branch_filter = {
          include = ["main"]
        }
        days_to_build              = ["Mon", "Tue", "Wed", "Thu", "Fri"]
        schedule_only_with_changes = false
        start_hours                = 4 # starts at 4am UTC, before tfazure foundation 5am auto apply start.
        start_minutes              = 0
      }
    }
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "ec427bdd-95f7-424a-9366-3171d83be397" # tyl-test0
      landingZoneName               = "tyl_test0_applications_v2",
      tfstateName                   = "tyl_test0_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/tyl_test0_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod_auto", "level3"]
  }

  cibc_sit = {
    project_key   = "keymatedev_management"
    name          = "cibc_sit"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\cibc_sit"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "2944818d-0871-4e27-8dd3-be18998b07bd" # cibc-sit
      landingZoneName               = "cibc_sit",
      tfstateName                   = "cibc_sit.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/cibc_sit"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  # deploys techops spn using azuread v2 provider
  cibc_sit_applications_v2 = {
    project_key   = "keymatedev_management"
    name          = "cibc_sit_applications_v2"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\cibc_sit_applications_v2"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks_pol.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "2944818d-0871-4e27-8dd3-be18998b07bd" # cibc-sit
      landingZoneName               = "cibc_sit_applications_v2",
      tfstateName                   = "cibc_sit_applications_v2.tfstate"
      configPath                    = "/caf-configuration/configuration/level3/not_templated/tfazure/cibc_sit_applications_v2"
      landingZonePath               = "/keymate-custom-caf-modules/modules/application_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  ace_dev = {
    project_key   = "keymatedev_management"
    name          = "ace_dev"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\ace_dev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "9cce8459-e175-4dcd-893b-451ca0b1b99b" # keymatedev-ace-dev
      landingZoneName               = "ace_dev",
      tfstateName                   = "ace_dev.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/ace_dev"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  loupe_prod = {
    project_key   = "keymatedev_management"
    name          = "loupe_prod"
    folder        = "\\configuration\\level3\\not_templated\\tfazure\\loupe_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "e21b42f3-0baa-48d7-83b6-846675ea2ce0" # loupe-prod
      landingZoneName               = "loupe_prod",
      tfstateName                   = "loupe_prod.tfstate"
      configPath                    = "/configuration/level3/not_templated/tfazure/loupe_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_prod", "prod_level3"]
  }

  management_aks_non_prod = {
    project_key   = "keymatedev_management"
    name          = "management_aks_non_prod"
    folder        = "\\configuration\\level3\\management\\aks\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "management_aks_non_prod",
      tfstateName                   = "management_aks_non_prod.tfstate"
      configPath                    = "/configuration/level3/management/aks/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  management_vault_non_prod = {
    project_key   = "keymatedev_management"
    name          = "management_vault_non_prod"
    folder        = "\\configuration\\level3\\management\\vault\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "management_vault_non_prod",
      tfstateName                   = "management_vault_non_prod.tfstate"
      configPath                    = "/configuration/level3/management/vault/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  management_jfrog_non_prod = {
    project_key   = "keymatedev_management"
    name          = "management_jfrog_non_prod"
    folder        = "\\configuration\\level3\\management\\jfrog\\non_prod"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://kv-vault-identity-sba.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "management_jfrog_non_prod",
      tfstateName                   = "management_jfrog_non_prod.tfstate"
      configPath                    = "/configuration/level3/management/jfrog/non_prod"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level3"]
  }

  vdi_hosting_shared_image_gallery = {
    project_key   = "keymatedev_management"
    name          = "vdi_hosting_shared_image_gallery"
    folder        = "\\configuration\\level3\\vdi_hosting\\shared_image_gallery"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "1cd62118-56dc-452c-afd7-256f8075b6d7" # vdi-hosting
      landingZoneName               = "vdi_hosting_shared_image_gallery",
      tfstateName                   = "vdi_hosting_shared_image_gallery.tfstate"
      configPath                    = "/configuration/level3/vdi_hosting/shared_image_gallery"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_main", "azdo_corp", "level3"]
  }

  avd_compute = {
    project_key   = "keymatedev_management"
    name          = "avd_compute"
    folder        = "\\configuration\\level3\\vdi_hosting\\avd_compute"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "1cd62118-56dc-452c-afd7-256f8075b6d7" # vdi-hosting
      landingZoneName               = "avd_compute",
      tfstateName                   = "avd_compute.tfstate"
      configPath                    = "/configuration/level3/vdi_hosting/avd_compute"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "false"
    }
    variable_group_keys = ["global_int_5_6_0", "azdo_corp", "level3"]
  }

  vdi_solution = {
    project_key   = "keymatedev_management"
    name          = "vdi_solution"
    folder        = "\\configuration\\level3\\vdi_hosting\\vdi_solution"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "1cd62118-56dc-452c-afd7-256f8075b6d7" # vdi-hosting
      landingZoneName               = "vdi_solution",
      tfstateName                   = "vdi_solution.tfstate"
      configPath                    = "/configuration/level3/vdi_hosting/vdi_solution"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_6_0", "azdo_corp", "level3"]
  }


  azdo_agents_aks_keymatehosting_nonprod_albumeradev = {
    project_key   = "keymatedev_management"
    name          = "azdo_agents_aks_keymatehosting_nonprod_albumeradev"
    folder        = "\\configuration\\level3\\azdo_agents\\non_prod\\azdo_agents_aks_v2_keymatehosting_albumeradev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azdo_agents_aks_keymatehosting_nonprod_albumeradev",
      tfstateName                   = "azdo_agents_aks_keymatehosting_nonprod_albumeradev.tfstate"
      configPath                    = "/configuration/level3/azdo_agents/non_prod/azdo_agents_aks_v2_keymatehosting_albumeradev"
      landingZonePath               = "/landingzones/caf_solution/add-ons/aks_azure_devops_agents_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_nonprod", "level3", "gitops_kv_secrets"]
  }

  azdo_agents_aks_keymatehosting_nonprod_keymatedev = {
    project_key   = "keymatedev_management"
    name          = "azdo_agents_aks_keymatehosting_nonprod_keymatedev"
    folder        = "\\configuration\\level3\\azdo_agents\\non_prod\\azdo_agents_aks_v2_keymatehosting_keymatedev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azdo_agents_aks_keymatehosting_nonprod_keymatedev",
      tfstateName                   = "azdo_agents_aks_keymatehosting_nonprod_keymatedev.tfstate"
      configPath                    = "/configuration/level3/azdo_agents/non_prod/azdo_agents_aks_v2_keymatehosting_keymatedev"
      landingZonePath               = "/landingzones/caf_solution/add-ons/aks_azure_devops_agents_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_nonprod", "level3", "gitops_kv_secrets"]
  }

  azdo_agents_aks_keymatehosting_prod_albumeradev = {
    project_key   = "keymatedev_management"
    name          = "azdo_agents_aks_keymatehosting_prod_albumeradev"
    folder        = "\\configuration\\level3\\azdo_agents\\prod\\azdo_agents_aks_v2_keymatehosting_albumeradev"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "azdo_agents_aks_keymatehosting_prod_albumeradev",
      tfstateName                   = "azdo_agents_aks_keymatehosting_prod_albumeradev.tfstate"
      configPath                    = "/configuration/level3/azdo_agents/prod/azdo_agents_aks_v2_keymatehosting_albumeradev"
      landingZonePath               = "/landingzones/caf_solution/add-ons/aks_azure_devops_agents_v2"
      level                         = "level3"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_prod", "prod_level3", "gitops_kv_secrets"]
  }


  # Level 4
  management_vault_azuread_app = {
    project_key   = "keymatedev_management"
    name          = "management_vault_azuread_app"
    folder        = "\\configuration\\level4\\management\\vault\\azuread_app"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "management_vault_azuread_app",
      tfstateName                   = "management_vault_azuread_app.tfstate"
      configPath                    = "/configuration/level4/management/vault/azuread-app"
      landingZonePath               = "/landingzones/caf_solution"
      level                         = "level4"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_int_5_7_0", "azdo_nonprod", "level4"]
  }

  management_vault_non_prod_helm = {
    project_key   = "keymatedev_management"
    name          = "management_vault_non_prod_helm"
    folder        = "\\configuration\\level4\\management\\non_prod\\vault\\terraform-helm"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://kv-vault-identity-sba.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      landingZoneName               = "management_vault_non_prod_helm",
      tfstateName                   = "management_vault_non_prod_helm.tfstate"
      configPath                    = "/configuration/level4/management/vault/standalone/terraform-helm/env/keymatedev-mgmt"
      landingZonePath               = "/configuration/level4/management/vault/standalone/terraform-helm"
      level                         = "level4"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1", "azdo_nonprod", "level4"]
  }


  shared_services_core = {
    project_key   = "keymatedev_management"
    name          = "shared_services_core"
    folder        = "\\configuration\\level4\\shared_services\\core"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0b1721ec-b6df-477a-9775-cefc9cfa984f" # keymatedev-caf-shared-services
      landingZoneName               = "shared_services_core",
      tfstateName                   = "shared_services_core.tfstate"
      configPath                    = "/configuration/level4/shared_services/core"
      landingZonePath               = "/landingzones/caf_solution/add-ons/aks_applications_v3"
      level                         = "level4"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_nonprod", "level4", "gitops_kv_secrets"]
  }


  shared_services_applications = {
    project_key   = "keymatedev_management"
    name          = "shared_services_applications"
    folder        = "\\configuration\\level4\\shared_services\\applications"
    yaml          = "configuration/level1/not_templated/gitops/azure_devops_v1/pipeline/rover_stages_aks.yaml"
    repo_type     = "TfsGit"
    git_repo_name = "caf-configuration"
    branch_name   = "refs/heads/main"
    variables = {
      SystemDefaultWorkingDirectory = "$(System.DefaultWorkingDirectory)"
      impersonateSpFromKeyVaultUrl  = "https://pildev-kv-mg-yan.vault.azure.net/"
      tfstateSubscriptionId         = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      targetSubscriptionId          = "0b1721ec-b6df-477a-9775-cefc9cfa984f" # keymatedev-caf-shared-services
      landingZoneName               = "shared_services_applications",
      tfstateName                   = "shared_services_applications.tfstate"
      configPath                    = "/configuration/level4/shared_services/applications"
      landingZonePath               = "/landingzones/caf_solution/add-ons/aks_applications_v3"
      level                         = "level4"
      extraRoverParams              = ""
      disableVmFiles                = "true"
    }
    variable_group_keys = ["global_2203_1_keymate", "azdo_nonprod", "level4", "gitops_kv_secrets"]
  }


}