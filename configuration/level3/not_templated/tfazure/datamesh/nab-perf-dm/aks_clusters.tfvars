aks_clusters = {
  dm_aks_core = {
    name               = "core"
    resource_group_key = "dm_rg_aks"
    # kubernetes_version        = "1.24.9"
    automatic_channel_upgrade = "stable"
    sku_tier                  = "Free"
    os_type                   = "Linux"

    vnet_key = "dm_vnet_core"
    network_profile = {
      network_plugin    = "azure"
      network_policy    = "calico"
      network_mode      = "transparent"
      outbound_type     = "userDefinedRouting"
      load_balancer_sku = null
    }

    private_dns_zone = {
      key    = "privatelink.uksouth.azmk8s.io"
      lz_key = "connectivity_private_dns_non_prod"
    }

    local_account_disabled = false
    identity = {
      type                 = "UserAssigned"
      managed_identity_key = "dm_msi_aks_core"
    }
    kubelet_identity = {
      managed_identity_key = "dm_msi_aks_core_kubelet"
    }

    private_cluster_enabled             = true
    private_cluster_public_fqdn_enabled = false
    public_network_access_enabled       = false
    http_application_routing_enabled    = false
    role_based_access_control_enabled   = true
    role_based_access_control = {
      enabled = true
      azure_active_directory = {
        managed = true
      }
    }

    addon_profile = {
      azure_policy = {
        enabled = true
      }
      http_application_routing = {
        enabled = false
      }
      oms_agent = {
        enabled           = true
        log_analytics_key = "dm_law_core_internal"
      }
      azure_keyvault_secrets_provider = {
        secret_rotation_enabled  = true
        secret_rotation_interval = "2m"
      }
      kube_dashboard = {
        enabled = false
      }
    }

    node_resource_group_name = "aks-nodepool"
    default_node_pool = {
      name                   = "syspool01"
      type                   = "VirtualMachineScaleSets"
      ultra_ssd_enabled      = true
      vm_size                = "Standard_D4ds_v4"
      node_count             = null
      subnet_key             = "dm_snet_core_aks_nodepool_system_pri"
      availability_zones     = ["1", "2", "3"]
      enable_auto_scaling    = true
      min_count              = 1
      max_count              = 2
      max_pods               = 30
      enable_host_encryption = false
      enable_node_public_ip  = false
      fips_enabled           = false
      kubelet_disk_type      = "OS"
      node_labels = {
        "project"            = "datamesh"
        "environment"        = "nab-perf-dm"
        "node_pool_category" = "syspool"
        "node_pool_name"     = "syspool01"
      }
      only_critical_addons_enabled = true
      os_disk_size_gb              = "128"
      os_disk_type                 = "Managed"
      os_sku                       = "Ubuntu"
      # upgrade_settings = {}
      tags = {
        project          = "datamesh"
        landingzone      = "nab-perf-dm"
        project-owners   = "pascal jerome | negar nassirpour"
        technical-owners = "platformengineering@keymate.co.uk"
      }
    }
    node_pools = {
      dm_aks_dmpool = {
        name                   = "dmpool01"
        type                   = "VirtualMachineScaleSets"
        ultra_ssd_enabled      = true
        vm_size                = "Standard_E2ds_v4"
        node_count             = null
        subnet_key             = "dm_snet_core_aks_nodepool_datamesh_pri"
        availability_zones     = ["1", "2", "3"]
        enable_auto_scaling    = true
        min_count              = 1
        max_count              = 2
        max_pods               = 30
        enable_host_encryption = false
        enable_node_public_ip  = false
        eviction_policy        = "Delete"
        fips_enabled           = false
        kubelet_disk_type      = "OS"
        priority               = "Spot"
        spot_max_price         = "-1"
        node_labels = {
          "project"                               = "datamesh"
          "environment"                           = "nab-perf-dm"
          "node_pool_category"                    = "dmpool"
          "node_pool_name"                        = "dmpool01"
          "kubernetes.azure.com/scalesetpriority" = "spot"
        }
        node_taints = [
          "kubernetes.azure.com/scalesetpriority=spot:NoSchedule"
        ]
        only_critical_addons_enabled = false
        os_disk_size_gb              = "128"
        os_disk_type                 = "Managed"
        os_sku                       = "Ubuntu"
        # upgrade_settings = {}
        tags = {
          project          = "datamesh"
          landingzone      = "nab-perf-dm"
          project-owners   = "pascal jerome | negar nassirpour"
          technical-owners = "platformengineering@keymate.co.uk"
        }
      }
    }
  }
}