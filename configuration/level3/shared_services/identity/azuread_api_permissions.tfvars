
# Grant consent needs to be done manually for 'Delegated' permissions. Caf does not seem to support it. Grant consent for Type = Scope (Delegated) should be using oauth2PermissionGrants graph API endpoint
# https://devcoops.com/terraform-grant-azure-ad-admin-consent/?utm_content=cmp-true

azuread_api_permissions = {
  argocd_oidc_spn = {
    microsoft_graph = {
      resource_app_id = "00000003-0000-0000-c000-000000000000"
      resource_access = {
        Delegated_User_Read = {
          id   = "e1fe6dd8-ba31-4d61-89e7-88639da4683d" # User.Read	(Delegated)
          type = "Scope"
        }
      }
    }
  }
}