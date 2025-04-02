provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.8.0"
    }
  }
}

provider "helm" {
  debug = true
  kubernetes {
    host                   = data.azurerm_kubernetes_cluster.kubeconfig.kube_config.0.host
    cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.kubeconfig.kube_config.0.cluster_ca_certificate)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["get-token", "--login", "msi", "--server-id", "6dae42f8-4368-4678-94ff-3960e28e3630"] # Azure Kubernetes Service AAD Server ID
      command     = "kubelogin"
    }
  }
}

data "azurerm_kubernetes_cluster" "kubeconfig" {
  name                = local.remote.aks_clusters[var.aks_lz_key][var.aks_key].cluster_name
  resource_group_name = local.remote.aks_clusters[var.aks_lz_key][var.aks_key].resource_group_name
}