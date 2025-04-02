aks_clusters = {
  management_aks = {
    name                      = "management"
    resource_group_key        = "management_hosting_non_prod"
    kubernetes_version        = "1.24.6"
    automatic_channel_upgrade = "stable"
    sku_tier                  = "Free"
    os_type                   = "Linux"

    lz_key   = "connectivity_virtual_networks_management_non_prod"
    vnet_key = "mgmt_region1"

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
      lz_key               = "identity_level2_management_non_prod"
      managed_identity_key = "aks_system_msi"
    }
    kubelet_identity = {
      lz_key               = "identity_level2_management_non_prod"
      managed_identity_key = "aks_kubelet_msi"
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
          "425e942e-3f85-4fc0-b966-b0cd6e9d4283"
        ]
      }
    }

    addon_profile = {
      # enabling will break level4/hashicorp unless the client_id (kubelet_msi) for the seal key is provided
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

    node_resource_group_name = "management-aks-nodepool"
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
        node_count             = null
        subnet_key             = "aks_nodepool_user"
        availability_zones     = ["1", "2", "3"]
        enable_auto_scaling    = true
        min_count              = 1
        max_count              = 5
        max_pods               = 30
        enable_host_encryption = false
        enable_node_public_ip  = false
        fips_enabled           = false
        kubelet_disk_type      = "OS"
        # node_taints                = ""
        only_critical_addons_enabled = false
        os_disk_size_gb              = "128"
        os_disk_type                 = "Managed"
        os_sku                       = "Ubuntu"
        node_labels = {
          "hardware" = "vault"
        }
        tags = {
          "project" = "Hashicorp Vault services"
        }
        # upgrade_settings = {}
      }
    }
  }
}