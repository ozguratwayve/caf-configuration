managed_identities = {
  dm_msi_aks_core = {
    name               = "aks-core"
    resource_group_key = "dm_rg_identity"
  }
  dm_msi_aks_core_kubelet = {
    name               = "aks-core-kubelet"
    resource_group_key = "dm_rg_identity"
  }
}