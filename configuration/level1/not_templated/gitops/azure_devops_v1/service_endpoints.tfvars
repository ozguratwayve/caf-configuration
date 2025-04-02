service_endpoints = {
  keymatedev_management = {
    endpoint_name = "keymatedev-management"
    subscription = {
      name = "keymatedev-management"
      id   = "16e59691-bf0d-44ec-acbe-9797f673378d"
    }

    project_key = "keymatedev_management"
    keyvault = {
      lz_key      = "launchpad_credentials"
      key         = "cred_gitops"
      secret_name = "sp-client-secret"
    }

    azuread_application = {
      lz_key = "launchpad_credentials"
      key    = "gitops"
    }

  }
}
