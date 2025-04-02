
diagnostics_definition = {
  azurerm_virtual_desktop_workspace = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Checkpoint", true, false, 7],
        ["Error", true, false, 7],
        ["Management", true, false, 7],
        ["Feed", true, false, 7],
      ]
    }
  }

  azurerm_virtual_desktop_host_pool = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Checkpoint", true, false, 7],
        ["Error", true, false, 7],
        ["Management", true, false, 7],
        ["Connection", true, false, 7],
        ["HostRegistration", true, false, 7],
        ["AgentHealthStatus", true, false, 7],
      ]
    }
  }

  azurerm_virtual_desktop_application_group = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Checkpoint", true, false, 7],
        ["Error", true, false, 7],
        ["Management", true, false, 7],
      ]
    }
  }

}
