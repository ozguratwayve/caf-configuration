dynamic_keyvault_secrets = {
  shared_services_identity_caf = {
    shared_svc_tenant_id = {
      output_key    = "client_config"
      resource_key  = "client_config"
      secret_name   = "tenant-id"
      attribute_key = "tenant_id"
    }
    kubelet_msi_id = {
      output_key    = "managed_identities"
      resource_key  = "shared_services_aks_kubelet_msi"
      secret_name   = "kubelet-msi-client-id"
      attribute_key = "client_id"
    }
    argocd_admins_group_id = {
      output_key    = "azuread_groups"
      resource_key  = "caf_shared_services_argocd_admins"
      secret_name   = "argocd-admins-group-id"
      attribute_key = "object_id"
    }
  }
}