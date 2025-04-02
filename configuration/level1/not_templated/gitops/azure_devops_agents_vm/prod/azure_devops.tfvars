azure_devops = {
  level0 = {
    # Rover version to apply to the devops self-hosted agents during the setup.
    rover_version = "aztfmod/rover:1.1.7-2203.2311"
    url           = "https://dev.azure.com/keymatedev/"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent-keymatedev"
        lz_key       = "launchpad_credentials"
        keyvault_key = "cred_gitops"
      }
    }

    agent_pool = {
      name              = "gitops-prod-level0"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level1 = {
    url           = "https://dev.azure.com/keymatedev/"
    rover_version = "aztfmod/rover:1.1.7-2203.2311"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent-keymatedev"
        lz_key       = "launchpad_credentials"
        keyvault_key = "cred_gitops"
      }
    }

    agent_pool = {
      name              = "gitops-prod-level1"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level2 = {
    url           = "https://dev.azure.com/keymatedev/"
    rover_version = "aztfmod/rover:1.1.7-2203.2311"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent-keymatedev"
        lz_key       = "launchpad_credentials"
        keyvault_key = "cred_gitops"
      }
    }

    agent_pool = {
      name              = "gitops-prod-level2"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level3 = {
    url           = "https://dev.azure.com/keymatedev/"
    rover_version = "aztfmod/rover:1.1.7-2203.2311"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent-keymatedev"
        lz_key       = "launchpad_credentials"
        keyvault_key = "cred_gitops"
      }
    }

    agent_pool = {
      name              = "gitops-prod-level3"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }
  level4 = {
    url           = "https://dev.azure.com/keymatedev/"
    rover_version = "aztfmod/rover:1.1.7-2203.2311"

    pats = {
      agent = {
        secret_name  = "azdo-pat-agent-keymatedev"
        lz_key       = "launchpad_credentials"
        keyvault_key = "cred_gitops"
      }
    }

    agent_pool = {
      name              = "gitops-prod-level4"
      auto_provision    = true
      num_agents        = 4
      agent_name_prefix = "agent"
    }
  }

}