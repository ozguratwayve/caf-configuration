variable "tenant_id" {
  type        = string
  description = "The tenant id for the Azure Active Directory organization."
}

variable "subscription_id" {
  type        = string
  description = "subscription_id for Vault managed resources."
}

variable "client_id" {
  type        = string
  description = "The client id for credentials to query the Azure APIs. Currently read permissions to query compute resources are required."
}

variable "client_secret" {
  type        = string
  description = "The client secret for credentials to query the Azure APIs."
}


variable "azure_role_name" {
  type        = string
  description = "The name of the role."
  default     = "default"
}

variable "allowed_redirect_uris" {
  type = list(string)
  default = [
    "http://localhost:8200/ui/vault/auth/oidc/oidc/callback",
    "http://localhost:8250/oidc/callback"
  ]
}

variable "oidc_scopes" {
  type = list(string)
  default = [
    "https://graph.microsoft.com/.default",
    "profile",
    "email"
  ]
}

variable "app_owners" {
  type        = list(string)
  default     = null
  description = "A set of object IDs of principals that will be granted ownership of the application."
}
