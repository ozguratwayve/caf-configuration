landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "azdo_agents_aks_keymatehosting_nonprod_albumeradev"
  global_settings_key = "gitops_aks_identity"
  tfstates = {
    gitops_aks_identity = {
      level   = "lower"
      tfstate = "gitops_aks_identity.tfstate"
    }
    azure_devops_v1_albumeradev = {
      level   = "lower"
      tfstate = "azure_devops_v1_albumeradev.tfstate"
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
    secret_name = "azdo-pat-admin-albumeradev"
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
    # Must match agent pool key
    aks_pool_infra_albumeradev = {
      org_url         = "https://dev.azure.com/albumeradev"
      image           = "tfazureshrsvc.azurecr.io/base-images/vsts-agent-base:aks-agents"
      requests_memory = "2Gi"
      requests_cpu    = "1"
      limits_memory   = "4Gi"
      limits_cpu      = "2"
      node_selector   = "infra_agents"
    }
    # Must match agent pool key
    aks_pool_app_albumeradev = {
      org_url         = "https://dev.azure.com/albumeradev"
      image           = "tfazureshrsvc.azurecr.io/base-images/vsts-agent-base:aks-agents"
      requests_memory = "2Gi"
      requests_cpu    = "1"
      limits_memory   = "4Gi"
      limits_cpu      = "2"
      node_selector   = "app_agents"
    }
  }
  namespace = "azdo"
  lz_key    = "azure_devops_v1_albumeradev"
}

# https://github.com/hashicorp/terraform-provider-kubernetes/issues/1406
# The namespace could potentialy exist, terraform will fail if its the case. We can consider changing aks agent code and check the existance of the namespace
namespaces = {
  azdo = {
    name = "azdo"
  }
}

helm_charts = {
  keda = {
    name             = "keda"
    repository       = "https://kedacore.github.io/charts"
    chart            = "keda"
    namespace        = "keda"
    create_namespace = true
    value_file       = "/#{SystemDefaultWorkingDirectory}#/#{configPath}#/templates/values-keda.yaml"
  }

  akv2k8s = {
    name             = "akv2k8s"
    repository       = "https://charts.spvapi.no"
    chart            = "akv2k8s"
    namespace        = "akv2k8s"
    create_namespace = true
    value_file       = "/#{SystemDefaultWorkingDirectory}#/#{configPath}#/templates/values-akv2k8s.yaml"
  }
}
