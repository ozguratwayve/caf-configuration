managed_identities = {
  cibc_dev_sql_identity = {
    name               = "cibc-dev-sql-identity"
    resource_group_key = "cibc_dev_identity_rg"
  }
  cibc_dev_aks_identity = {
    name               = "cibc-dev-aks-identity"
    resource_group_key = "cibc_dev_identity_rg"
  }
}
