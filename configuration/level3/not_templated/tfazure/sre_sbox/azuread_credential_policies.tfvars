azuread_credential_policies = {
  tfazure_sre_sbox = {
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
}
