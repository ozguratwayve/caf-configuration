aks_clusters = {
  gitops_aks = {
    name                      = "gitops"
    resource_group_key        = "gitops_aks"
    kubernetes_version        = "1.25.5"
    automatic_channel_upgrade = "stable"
    sku_tier                  = "Free"
    os_type                   = "Linux"

    lz_key   = "gitops_virtual_networks"
    vnet_key = "aks_devops_region1"

    network_profile = {
      network_plugin    = "azure"
      network_policy    = "calico"
      outbound_type     = "userDefinedRouting"
      load_balancer_sku = "Standard"
    }

    private_dns_zone = {
      key    = "privatelink.uksouth.azmk8s.io"
      lz_key = "connectivity_private_dns_non_prod"
    }

    local_account_disabled = true
    identity = {
      type                 = "UserAssigned"
      lz_key               = "gitops_aks_identity"
      managed_identity_key = "gitops_aks_system_msi"
    }
    kubelet_identity = {
      lz_key               = "gitops_aks_identity"
      managed_identity_key = "gitops_aks_kubelet_msi"
    }

    private_cluster_enabled             = true
    private_cluster_public_fqdn_enabled = true
    public_network_access_enabled       = false
    http_application_routing_enabled    = false
    role_based_access_control_enabled   = true
    role_based_access_control = {
      enabled = true
      azure_active_directory = {
        managed = true
        admin_group_object_ids = [
          "5c339952-22cc-4071-b961-8531067ff85d"
        ]
      }
    }

    addon_profile = {
      azure_policy = {
        enabled = false
      }
      http_application_routing = {
        enabled = false
      }
      kube_dashboard = {
        enabled = false
      }
    }

    node_resource_group_name = "gitops-aks-nodepool"
    default_node_pool = {
      name                   = "system"
      type                   = "VirtualMachineScaleSets"
      ultra_ssd_enabled      = false
      vm_size                = "Standard_D4ds_v5"
      node_count             = "1"
      subnet_key             = "aks_nodepool_system"
      availability_zones     = ["1", "2", "3"]
      enable_auto_scaling    = false
      max_pods               = 60
      enable_host_encryption = false
      enable_node_public_ip  = false
      fips_enabled           = false
      kubelet_disk_type      = "OS"
      node_labels = {
        "hardware" = "system"
      }
      only_critical_addons_enabled = true
      os_disk_size_gb              = "128"
      os_disk_type                 = "Ephemeral"
      os_sku                       = "Ubuntu"
      tags                         = {}
      # upgrade_settings = {}
    }
    node_pools = {
      aks_nodepool_infra = {
        name                         = "azdoinfra1"
        type                         = "VirtualMachineScaleSets"
        ultra_ssd_enabled            = false
        vm_size                      = "Standard_D8ds_v5"
        node_count                   = null
        subnet_key                   = "aks_infra"
        availability_zones           = ["1", "2", "3"]
        enable_auto_scaling          = true
        min_count                    = 1
        max_count                    = 5
        max_pods                     = 60
        enable_host_encryption       = false
        enable_node_public_ip        = false
        eviction_policy              = "Delete"
        fips_enabled                 = false
        kubelet_disk_type            = "OS"
        only_critical_addons_enabled = false
        os_disk_size_gb              = "256"
        os_disk_type                 = "Ephemeral"
        os_sku                       = "Ubuntu"
        priority                     = "Spot"
        spot_max_price               = "-1"
        node_labels = {
          "purpose"                               = "infra_agents"
          "kubernetes.azure.com/scalesetpriority" = "spot"
        }
        node_taints = [
          "kubernetes.azure.com/scalesetpriority=spot:NoSchedule"
        ]
        tags = {
          "project" = "Azure Devops AKS Agents for Infrastructure Only"
        }
        # upgrade_settings = {}
      }
      aks_nodepool_app = {
        name                         = "azdoapp1"
        type                         = "VirtualMachineScaleSets"
        ultra_ssd_enabled            = false
        vm_size                      = "Standard_D8ds_v5"
        node_count                   = null
        subnet_key                   = "aks_app"
        availability_zones           = ["1", "2", "3"]
        enable_auto_scaling          = true
        min_count                    = 1
        max_count                    = 5
        max_pods                     = 60
        enable_host_encryption       = false
        enable_node_public_ip        = false
        eviction_policy              = "Delete"
        fips_enabled                 = false
        kubelet_disk_type            = "OS"
        only_critical_addons_enabled = false
        os_disk_size_gb              = "256"
        os_disk_type                 = "Ephemeral"
        os_sku                       = "Ubuntu"
        priority                     = "Spot"
        spot_max_price               = "-1"
        node_labels = {
          "purpose"                               = "app_agents"
          "kubernetes.azure.com/scalesetpriority" = "spot"
        }
        node_taints = [
          "kubernetes.azure.com/scalesetpriority=spot:NoSchedule"
        ]
        tags = {
          "project" = "Azure Devops AKS Agents for building Application Only"
        }
        # upgrade_settings = {}
      }
    }
  }
}
