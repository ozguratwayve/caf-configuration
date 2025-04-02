subscription_id_overrides = {
  root           = []
  decommissioned = []
  sandboxes      = []
  landing-zones  = []
  platform       = []
  connectivity   = []
  management     = []
  identity       = []
}

subscription_id_overrides_by_keys = {
  platform = {
    management = {
      lz_key = "subscriptions"
      key    = "management"
    }
    keymatedev_management_prod = {
      lz_key = "subscriptions"
      key    = "keymatedev_management_prod"
    }
    keymatedev_caf_data_management = {
      lz_key = "subscriptions"
      key    = "keymatedev_caf_data_management"
    }
  }
  sandboxes = {
    keymatedev_architecture_sandpit = {
      lz_key = "subscriptions"
      key    = "keymatedev_architecture_sandpit"
    }
  }
}