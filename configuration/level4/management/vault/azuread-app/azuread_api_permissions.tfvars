
# Grant consent needs to be done manually for 'Delegated' permissions. Caf does not seem to support it. Grant consent for Type = Scope (Delegated) should be using oauth2PermissionGrants graph API endpoint
# https://devcoops.com/terraform-grant-azure-ad-admin-consent/?utm_content=cmp-true

azuread_api_permissions = {
  hashicorp_vault_app = {
    microsoft_graph = {
      resource_app_id = "00000003-0000-0000-c000-000000000000"
      resource_access = {
        profile = {
          id   = "14dad69e-099b-42c9-810b-d002981feec1" # profile (View users' basic profile)
          type = "Scope"
        }
        openid = {
          id   = "37f7f235-527c-4136-accd-4a02d197296e" # openid (sign user in)
          type = "Scope"
        }
        Application_GroupMember_Read_All = {
          id   = "98830695-27a2-44f7-8c18-0c3ebc9698f6" # GroupMember.Read.All (Application)
          type = "Role"
        }
        Delegated_GroupMember_Read_All = {
          id   = "bc024368-1153-4739-b217-4326f2e966d0" # GroupMember.Read.All	(Delegated)
          type = "Scope"
        }
        Delegated_GroupMember_ReadWrite_All = {
          id   = "f81125ac-d3b7-4573-a3b2-7099cc39df9e" # GroupMember.ReadWrite.All	(Delegated)
          type = "Scope"
        }
        Application_GroupMember_ReadWrite_All = {
          id   = "dbaae8cf-10b5-4b86-a4a1-f871c94c6695" # GroupMember.ReadWrite.All	(Application)
          type = "Role"
        }
        Delegated_Application_Read_All = {
          id   = "c79f8feb-a9db-4090-85f9-90d820caa0eb" # Application.Read.All(Delegated)
          type = "Scope"
        }
        Application_Application_Read_All = {
          id   = "9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30" # Application.Read.All(Application)
          type = "Role"
        }
        Delegated_Application_ReadWrite_All = {
          id   = "bdfbf15f-ee85-4955-8675-146e8e5296b5" # Application.ReadWrite.All	(Delegated)
          type = "Scope"
        }
        Application_Application_ReadWrite_All = {
          id   = "1bfefb4e-e0b5-418b-a88f-73c46d2cc8e9" # Application.ReadWrite.All	(Application)
          type = "Role"
        }
        Delegated_Directory_Read_All = {
          id   = "06da0dbc-49e2-44d2-8312-53f166ab848a" # Directory.Read.All	(Delegated)
          type = "Scope"
        }
        Application_Directory_Read_All = {
          id   = "7ab1d382-f21e-4acd-a863-ba3e13f7da61" # Directory.Read.All	(Application)
          type = "Role"
        }
        Delegated_Directory_ReadWrite_All = {
          id   = "c5366453-9fb0-48a5-a156-24f0c49a4b84" # Directory.ReadWrite.All	(Delegated)
          type = "Scope"
        }
        Application_Directory_ReadWrite_All = {
          id   = "19dbc75e-c2e2-444c-a770-ec69d8559fc7" # Directory.ReadWrite.All	(Application)
          type = "Role"
        }
        Delegated_Group_Read_All = {
          id   = "5f8c59db-677d-491f-a6b8-5f174b11ec1d" # Group.Read.All	(Delegated)
          type = "Scope"
        }
        Application_Group_Read_All = {
          id   = "5b567255-7703-4780-807c-7be8301ae99b" # Group.Read.All	(Application)
          type = "Role"
        }
        Delegated_Group_ReadWrite_All = {
          id   = "4e46008b-f24c-477d-8fff-7bb4ec7aafe0" # Group.ReadWrite.All	(Delegated)
          type = "Scope"
        }
        Application_Group_ReadWrite_All = {
          id   = "62a82d76-70ea-41e2-9197-370581804d09" # Group.ReadWrite.All	(Application)
          type = "Role"
        }
      }
    }
  }
}