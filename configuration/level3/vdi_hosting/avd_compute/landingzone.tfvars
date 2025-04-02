# Creation of another landing zone to avoid this kind of error
# Error: KeyVault Secret "newwvd-hostpool-token" (KeyVault URI "https://kv-vmsecretskv-wxp.vault.azure.net/") does not exist
#
#   with module.vm_extension_session_host_dscextension["1"].data.azurerm_key_vault_secret.host_pool_token["enabled"],
#   on /home/vsts_azpcontainer/pildev/rover_jobs/20230306095517446028474/modules/vm_extension_session_host_dscextension/modules/compute/virtual_machine_extensions/wvd_dsc.tf line 31, in data "azurerm_key_vault_secret" "host_pool_token":
#   31: data "azurerm_key_vault_secret" "host_pool_token" {

landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "avd_compute"
  global_settings_key = "identity_level2_non_prod"
  tfstates = {
    connectivity_virtual_networks_vdi_hosting_non_prod = {
      tfstate = "connectivity_virtual_networks_vdi_hosting_non_prod.tfstate"
      level   = "lower"
    }
    identity_level2_vdi_hosting_non_prod = {
      tfstate   = "identity_level2_vdi_hosting_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity_level2_non_prod = {
      tfstate = "identity_level2_non_prod.tfstate"
      level   = "lower"
    }
    vdi_solution = {
      tfstate = "vdi_solution.tfstate"
      level   = "current"
    }
    vdi_hosting_corp = {
      tfstate = "vdi_hosting_shared_image_gallery.tfstate"
      level   = "current"
    }
  }
}

resource_groups = {
  avd_compute = {
    name   = "avd-compute"
    region = "region1"
  }
}
