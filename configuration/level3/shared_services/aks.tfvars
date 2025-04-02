aks_clusters = {
  shared_services_aks = {
    name                      = "shared-services"
    resource_group_key        = "shared_services_rg"
    kubernetes_version        = "1.26.6"
    automatic_channel_upgrade = "stable"
    sku_tier                  = "Free"
    os_type                   = "Linux"

    lz_key   = "connectivity_virtual_networks_shared_services_non_prod"
    vnet_key = "shared_services_vnet_region1"

    network_profile = {
      network_plugin    = "azure"
      network_policy    = "calico"
      outbound_type     = "userDefinedRouting"
      load_balancer_sku = "standard"
    }

    private_dns_zone = {
      key    = "privatelink.uksouth.azmk8s.io"
      lz_key = "connectivity_private_dns_non_prod"
    }

    local_account_disabled = true
    identity = {
      type                 = "UserAssigned"
      lz_key               = "shared_services_identity"
      managed_identity_key = "shared_services_aks_system_msi"
    }
    kubelet_identity = {
      lz_key               = "shared_services_identity"
      managed_identity_key = "shared_services_aks_kubelet_msi"
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
      }
    }

    admin_groups = {
      lz_key             = "shared_services_identity"
      azuread_group_keys = ["caf_shared_services_aks_cluster_admins"]
    }

    addon_profile = {
      # enabling will break level4/hashicorp unless the client_id (kubelet_msi) for the seal key is provided
      azure_policy = {
        enabled = true
      }
      http_application_routing = {
        enabled = false
      }
      kube_dashboard = {
        enabled = false
      }
      # Needed to deploy aks_applications_v2 for the time being
      azure_keyvault_secrets_provider = {
        secret_rotation_enabled  = true
        secret_rotation_interval = "5m"
      }
    }

    node_resource_group_name = "shared-services-aks-nodepool"
    default_node_pool = {
      name                   = "system"
      type                   = "VirtualMachineScaleSets"
      ultra_ssd_enabled      = false
      vm_size                = "Standard_D4s_v4"
      node_count             = null
      subnet_key             = "aks_nodepool_system"
      availability_zones     = ["1", "2", "3"]
      enable_auto_scaling    = true
      min_count              = 1
      max_count              = 5
      max_pods               = 30
      enable_host_encryption = false
      enable_node_public_ip  = false
      fips_enabled           = false
      kubelet_disk_type      = "OS"
      node_labels = {
        "hardware" = "system"
      }
      only_critical_addons_enabled = true
      os_disk_size_gb              = "128"
      os_disk_type                 = "Managed"
      os_sku                       = "Ubuntu"
      tags                         = {}
      # upgrade_settings = {}
    }
    node_pools = {
      aks_nodepool_user = {
        name                   = "user"
        type                   = "VirtualMachineScaleSets"
        ultra_ssd_enabled      = false
        vm_size                = "Standard_D4s_v4"
        node_count             = "1"
        subnet_key             = "aks_nodepool_user"
        availability_zones     = ["1", "2", "3"]
        enable_auto_scaling    = true
        min_count              = 1
        max_count              = 5
        max_pods               = 30
        enable_host_encryption = false
        enable_node_public_ip  = false
        eviction_policy        = "Delete"
        fips_enabled           = false
        kubelet_disk_type      = "OS"
        priority               = "Spot"
        spot_max_price         = "-1"
        node_labels = {
          "kubernetes.azure.com/scalesetpriority" = "spot"
        }
        node_taints = [
          "kubernetes.azure.com/scalesetpriority=spot:NoSchedule"
        ]
        only_critical_addons_enabled = false
        os_disk_size_gb              = "128"
        os_disk_type                 = "Managed"
        os_sku                       = "Ubuntu"
        tags = {
          "project" = "Shared services"
        }
        # upgrade_settings = {}
      }
    }
  }
}