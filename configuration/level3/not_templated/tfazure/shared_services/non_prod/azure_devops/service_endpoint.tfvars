service_endpoints = {
  tf_sre_sbox = {
    endpoint_name = "tf-sre-sbox"
    subscription = {
      # key = ""
      name = "keymatedev-sre-sandpit"
      id   = "858a138f-500a-4fdd-ab1a-1a54a59d0abd" # key in subscription id
    }

    project_key = "keymate_infrastructure"

    keyvault = {
      lz_key      = "sre_sbox"
      key         = "sre_sbox_caf"
      secret_name = "sre-sbox-client-secret"
    }

    azuread_application = {
      lz_key = "sre_sbox"
      key    = "tfazure_sre_sbox"
    }
  }
}
