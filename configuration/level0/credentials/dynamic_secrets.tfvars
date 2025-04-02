
# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
dynamic_keyvault_secrets = {
  cred_ea_account_owner = { # ea account owner
    account_owner_username = {
      secret_name = "account-owner-username"
      value       = ""
    }
    account_owner_password = {
      secret_name = "account-owner-password"
      value       = ""
    }
    tenant_id = {
      secret_name = "tenant-id"
      value       = "07854bea-1ad0-4a14-b1e5-c5da8ff45eb7" # keymatedev.onmicrosoft.com Tenant
    }
  }
  cred_gitops = {
    admin_keymatedev = {
      secret_name = "azdo-pat-admin-keymatedev"
      value       = ""
    }
    agent_keymatedev = {
      secret_name = "azdo-pat-agent-keymatedev"
      value       = ""
    }
    keymatedev_git_clone = {
      secret_name = "keymatedev-git-clone-pat"
      value       = ""
    }
  }
}