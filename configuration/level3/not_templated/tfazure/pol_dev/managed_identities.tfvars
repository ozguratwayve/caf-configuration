managed_identities = {
  pol_dev_sql_identity = {
    name               = "pol-dev-sql-identity"
    resource_group_key = "pol_dev_identity_rg"
  }
  pol_dev_aks_identity = {
    name               = "pol-dev-aks-identity"
    resource_group_key = "pol_dev_identity_rg"
  }
}
