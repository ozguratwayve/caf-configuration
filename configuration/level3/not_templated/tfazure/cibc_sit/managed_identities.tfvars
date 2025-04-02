managed_identities = {
  cibc_sit_sql_identity = {
    name               = "cibc-sit-sql-identity"
    resource_group_key = "cibc_sit_identity_rg"
  }
  cibc_sit_aks_identity = {
    name               = "cibc-sit-aks-identity"
    resource_group_key = "cibc_sit_identity_rg"
  }
}
