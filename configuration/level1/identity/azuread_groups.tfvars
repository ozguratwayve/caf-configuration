azuread_groups = {
  caf_vault = {
    name                   = "caf_vault"
    prevent_duplicate_name = true
    members = {
      azuread_service_principal_keys = ["vault_sp"]
    }
  }
  caf_purview_service_accounts = {
    name                   = "caf-purview-service-accounts"
    prevent_duplicate_name = true
  }
  caf_sandboxes_contributors = {
    name                   = "caf-sandboxes-contributors"
    prevent_duplicate_name = true
    # members = {
    # Membership will be managed by IT as a part of Microsoft Entra ID. This security group will be a resource in the 'sandboxes' entitlements management catalog
    # https://entra.microsoft.com/#view/Microsoft_Azure_ELMAdmin/CatalogMenuBlade/~/resources/catalogId/6031fe11-e90d-4da3-8804-1b5a154c3f4f/catalogName/Sandboxes
    # }
  }
  p2s_restricted_data_access = {
    name                   = "p2s-restricted-data-access"
    prevent_duplicate_name = true
  }
  p2s_admins_access = {
    name                   = "p2s-admins-access"
    prevent_duplicate_name = true
  }
  p2s_no_access = {
    # This group is just a dummy group in order to have a groupID to configure the default client pool.
    name                   = "p2s-no-access"
    prevent_duplicate_name = true
  }
}