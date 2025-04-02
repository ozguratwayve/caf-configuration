global_settings = {
  default_region = "region1"
  environment    = "test"
  regions = {
    region1 = "uksouth"
    region2 = "ukwest"
  }
}

resource_groups = {
  # Default to var.global_settings.default_region. You can overwrite it by setting the attribute region = "region2"
  vdi_solution = {
    name = "wvd-environment"
  }
  vdi_solution = {
    name = "wvd-virtualmachines"
    tags = {
      env = "standalone"
    }
  }
}
