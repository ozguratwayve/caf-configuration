azuread_credential_policies = {
  default_policy = {
    length  = 250
    special = false
    upper   = true
    number  = true

    expire_in_days = 360
    rotation_key0 = {
      days = 365
    }
    rotation_key1 = {
      days = 300
    }
  }
}