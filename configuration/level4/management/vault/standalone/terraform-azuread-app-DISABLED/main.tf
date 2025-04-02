provider "azurerm" {
  features {}
}


resource "random_id" "app" {
  byte_length = 4
}

resource "azuread_application" "vault" {
  display_name = "hashicorp-vault-app-${random_id.app.hex}"

  web {
    redirect_uris = [
      "${var.vault_ui_redirect_address}/ui/vault/auth/oidc/oidc/callback",
      "${var.vault_cli_redirect_address}/oidc/callback"
    ]

    implicit_grant {
      access_token_issuance_enabled = false
      id_token_issuance_enabled     = false
    }
  }

  api {
    oauth2_permission_scope {
      admin_consent_description  = "Allow the Vault application to read memberships and basic group properties for all groups without a signed-in user."
      admin_consent_display_name = "Read all group members"
      id                         = "98830695-27a2-44f7-8c18-0c3ebc9698f6"
      type                       = "Admin"
      enabled                    = true
      value                      = "GroupMember.Read.All" # oauth2 scope (scp)
    }
    oauth2_permission_scope {
      admin_consent_description  = "Allow the Vault application to read View users' basic profile without a signed-in user."
      admin_consent_display_name = "View users' basic profile"
      id                         = "14dad69e-099b-42c9-810b-d002981feec1"
      type                       = "Admin"
      enabled                    = true
      value                      = "profile" # oauth2 scope (scp)
    }
    oauth2_permission_scope {
      admin_consent_description  = "Allow the Vault application to read memberships and basic group properties for all groups without a signed-in user."
      admin_consent_display_name = "sign user in"
      id                         = "37f7f235-527c-4136-accd-4a02d197296e"
      type                       = "Admin"
      enabled                    = true
      value                      = "openid" # oauth2 scope (scp)
    }
  }

  group_membership_claims = [
    "All"
  ]

  optional_claims {
    access_token {
      name = "groups"
    }

    id_token {
      name = "groups"
    }

    saml2_token {
      name = "groups"
    }
  }

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000" # Microsoft Graph

    resource_access {
      id   = "98830695-27a2-44f7-8c18-0c3ebc9698f6" # GroupMember.Read.All (Application)
      type = "Role"
    }
    resource_access {
      id   = "bc024368-1153-4739-b217-4326f2e966d0" # GroupMember.Read.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "f81125ac-d3b7-4573-a3b2-7099cc39df9e" # GroupMember.ReadWrite.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "dbaae8cf-10b5-4b86-a4a1-f871c94c6695" # GroupMember.ReadWrite.All	(Application)
      type = "Role"
    }
    resource_access {
      id   = "14dad69e-099b-42c9-810b-d002981feec1" # profile (View users' basic profile)
      type = "Scope"
    }
    resource_access {
      id   = "37f7f235-527c-4136-accd-4a02d197296e" # openid (sign user in)
      type = "Scope"
    }
    resource_access {
      id   = "c79f8feb-a9db-4090-85f9-90d820caa0eb" # Application.Read.All(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30" # Application.Read.All(Application)
      type = "Role"
    }
    resource_access {
      id   = "bdfbf15f-ee85-4955-8675-146e8e5296b5" # Application.ReadWrite.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "1bfefb4e-e0b5-418b-a88f-73c46d2cc8e9" # Application.ReadWrite.All	(Application)
      type = "Role"
    }
    resource_access {
      id   = "06da0dbc-49e2-44d2-8312-53f166ab848a" # Directory.Read.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "7ab1d382-f21e-4acd-a863-ba3e13f7da61" # Directory.Read.All	(Application)
      type = "Role"
    }
    resource_access {
      id   = "c5366453-9fb0-48a5-a156-24f0c49a4b84" # Directory.ReadWrite.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "19dbc75e-c2e2-444c-a770-ec69d8559fc7" # Directory.ReadWrite.All	(Application)
      type = "Role"
    }
    resource_access {
      id   = "5f8c59db-677d-491f-a6b8-5f174b11ec1d" # Group.Read.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "5b567255-7703-4780-807c-7be8301ae99b" # Group.Read.All	(Application)
      type = "Role"
    }
    resource_access {
      id   = "4e46008b-f24c-477d-8fff-7bb4ec7aafe0" # Group.ReadWrite.All	(Delegated)
      type = "Scope"
    }
    resource_access {
      id   = "62a82d76-70ea-41e2-9197-370581804d09" # Group.ReadWrite.All	(Application)
      type = "Role"
    }
  }

  identifier_uris = [
    "api://hashicorp-vault-app-${random_id.app.hex}"
  ]

  prevent_duplicate_names = true
  sign_in_audience        = "AzureADMyOrg"
  owners                  = [data.azuread_client_config.current.object_id]


}

resource "azuread_service_principal" "vault" {
  application_id = azuread_application.vault.application_id
  owners         = [data.azuread_client_config.current.object_id]
}

resource "azuread_directory_role" "cloud_application_administrator" {
  template_id = "158c047a-c907-4556-b7ef-446551a6b5f7" # Cloud Application Administrator
}

resource "azurerm_role_assignment" "uac_nonprod" {
  scope                = data.azurerm_management_group.non_production.id
  role_definition_name = "User Access Administrator"
  principal_id         = azuread_service_principal.vault.object_id
}


resource "azurerm_role_definition" "vault_role" {
  name        = "Vault-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is role for App registrations used for HashiCorp Vault."

  permissions {
    actions = [
      "Microsoft.Compute/virtualMachines/read",
      "Microsoft.Compute/virtualMachineScaleSets/*/read"
    ]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

resource "azurerm_role_assignment" "vault_role" {
  scope              = data.azurerm_subscription.primary.id
  role_definition_id = azurerm_role_definition.vault_role.role_definition_resource_id
  principal_id       = azuread_service_principal.vault.object_id
}

resource "azuread_application_password" "vault" {
  display_name          = "Vault"
  application_object_id = azuread_application.vault.object_id
}

data "azurerm_client_config" "current" {}
