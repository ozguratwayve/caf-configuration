managed_identities = {
  cibc_test_sql_identity = {
    name               = "cibc-test-sql-identity"
    resource_group_key = "cibc_test_identity_rg"
  }
  cibc_test_aks_identity = {
    name               = "cibc-test-aks-identity"
    resource_group_key = "cibc_test_identity_rg"
  }
}
