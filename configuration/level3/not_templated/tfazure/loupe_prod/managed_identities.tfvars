managed_identities = {
  loupe_prod_sql_identity = {
    name               = "loupe-prod-sql-identity"
    resource_group_key = "loupe_prod_identity_rg"
  }
  loupe_prod_aks_identity = {
    name               = "loupe-prod-aks-identity"
    resource_group_key = "loupe_prod_identity_rg"
  }
}
