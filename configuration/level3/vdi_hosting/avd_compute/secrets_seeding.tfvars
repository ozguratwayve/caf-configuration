dynamic_keyvault_secrets = {
  avd_vm_kv = { # Key of the keyvault
    # below are examples of manual seeding, not recommended to keep secrets in varfiles, just to illustrate the capability and integration features.
    keymateavd-admin = {
      secret_name = "keymatevdi-admin"
      value       = "vdi_admin"
    }
    keymate-password = {
      secret_name = "keymatevdi-password"
      value       = "keymate123456"
    }
    domain-join-username = {
      secret_name = "vdi-user"
      value       = "vdiadmin@keymatedev.onmicrosoft.com"
    }
    domain-join-password = {
      secret_name = "vdi-password"
      value       = "keymate123456"
    }
  }
}


