
# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
dynamic_keyvault_secrets = {
  cred_gitops_aks_prod = {
    admin_albumeradev = {
      secret_name = "azdo-pat-admin-albumeradev"
      value       = ""
    }
    agent_albumeradev = {
      secret_name = "azdo-pat-agent-albumeradev"
      value       = ""
    }
    admin_keymatedev = {
      secret_name = "azdo-pat-admin-keymatedev"
      value       = ""
    }
    agent_keymatedev = {
      secret_name = "azdo-pat-agent-keymatedev"
      value       = ""
    }
  }
}
