
wvd_host_pools = {
  wvd_hp1 = {
    resource_group_key   = "vdi_solution"
    name                 = "armhp"
    friendly_name        = "keymate-vdi-hostpool"
    description          = "A host pool for keymate vdi users"
    validate_environment = false
    type                 = "Pooled"
    #Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are None, Desktop or RailApplications.
    preferred_app_group_type = "Desktop"
    maximum_sessions_allowed = 100
    load_balancer_type       = "DepthFirst"
    #Expiration value should be between 1 hour and 30 days.
    custom_rdp_properties = "drivestoredirect:s:*;audiomode:i:0;videoplaybackmode:i:1;redirectclipboard:i:1;redirectprinters:i:1;devicestoredirect:s:*;redirectcomports:i:1;redirectsmartcards:i:1;usbdevicestoredirect:s:*;redirectwebauthn:i:1;use multimon:i:1;enablerdsaadauth:i:1;"
    registration_info = {
      #token_validity = "720h" #in hours (30d)
      expiration_date = "2023-09-29T10:00:00Z"
    }
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "azurerm_virtual_desktop_host_pool"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
  }
}

wvd_application_groups = {
  wvd_app1 = {
    resource_group_key = "vdi_solution"
    host_pool_key      = "wvd_hp1"
    wvd_workspace_key  = "wvd_ws1"
    name               = "keymateapp"
    friendly_name      = "Desktopapp"
    description        = "A description of my workspace"
    #Type of Virtual Desktop Application Group. Valid options are RemoteApp or Desktop.
    type = "Desktop"
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "azurerm_virtual_desktop_application_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
  }
}

wvd_workspaces = {
  wvd_ws1 = {
    resource_group_key = "vdi_solution"
    name               = "keymate"
    friendly_name      = "keymate_workspace"
    description        = "A description of my workspace"

    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "azurerm_virtual_desktop_workspace"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
  }
}
