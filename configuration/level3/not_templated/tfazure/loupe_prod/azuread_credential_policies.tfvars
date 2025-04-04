azuread_credential_policies = {
  tfazure_loupe_prod = {
    # Length of the password
    length  = 250
    special = false
    upper   = true
    number  = true

    # Password Expiration date
    expire_in_days = 360
    rotation_key0 = {
      # Odd number
      days = 365
    }
    rotation_key1 = {
      # Even number
      days = 300
    }
  }
  default_policy = {
    # Length of the password
    length  = 250
    special = false
    upper   = true
    number  = true

    # Password Expiration date
    expire_in_days = 65
    rotation_key0 = {
      # Odd number
      days = 33
    }
    rotation_key1 = {
      # Even number
      days = 58
    }
  }

}
