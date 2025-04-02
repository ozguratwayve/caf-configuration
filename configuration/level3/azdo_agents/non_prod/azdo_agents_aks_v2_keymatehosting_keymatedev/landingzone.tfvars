landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "azdo_agents_aks_keymatehosting_nonprod_keymatedev"
  global_settings_key = "gitops_aks_identity"
  tfstates = {
    gitops_aks_identity = {
      level   = "lower"
      tfstate = "gitops_aks_identity.tfstate"
    }
    azure_devops_v1_keymatedev = {
      level   = "lower"
      tfstate = "azure_devops_v1_keymatedev.tfstate"
    }
    gitops_aks = {
      level   = "lower"
      tfstate = "gitops_aks.tfstate"
    }
  }
}

keyvaults = {
  gitops_credentials_kv = {
    lz_key      = "gitops_aks_identity"
    key         = "cred_gitops_aks"
    secret_name = "azdo-pat-admin-keymatedev"
  }
}

aks_clusters = {
  gitops_aks = {
    lz_key = "gitops_aks"
    key    = "gitops_aks"
  }
}
aks_cluster_key = "gitops_aks"

agent_pools = {
  keyvault_key = "gitops_credentials_kv"
  output_key   = "agent_pools"
  agents = {
    aks_pool_infra_keymatedev = {
      org_url         = "https://dev.azure.com/keymatedev"
      image           = "tfazureshrsvc.azurecr.io/base-images/vsts-agent-base:aks-agents"
      requests_memory = "2Gi"
      requests_cpu    = "1"
      limits_memory   = "4Gi"
      limits_cpu      = "2"
      node_selector   = "infra_agents"
    }
    # aks_pool_app = {}
  }
  namespace = "azdo"
  lz_key    = "azure_devops_v1_keymatedev"
}
