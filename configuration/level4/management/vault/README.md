
# Step

## Pre-requisite:
- AKS cluster. It should have been deployed on level3/management/aks
- Vault CLI
- Helm 3+

## Generate Certificates
- If not already done, generate CA / Intermediate certificates defined in helm/docs/how2/external-pki.md. Vault wont start without these certificates
At this stage, we should have two aks secrets named tls-ca and tls-server

# Adjust helm configuration
- Look for override-values.yaml and change the tenant_id && vault_name value

## Install Vault server on AKS cluster
- helm upgrade --install hashicorp-vault hashicorp/vault -n vault -f override-values.yaml

## Initialize Vault and generate Vault Token for the first login
- kubectl exec hashicorp-vault-0 -n vault -- vault status
- kubectl exec hashicorp-vault-0 -n vault -- vault operator init -key-shares=5 -key-threshold=3 -format=json > cluster-keys.json

## Update the Private DNS zone in order to be able to access Vault UI by adding a 'A' record
- Add a 'A' record call 'vault' in the zone 'keymatehosting.internal' pointing to the external LoadBalancer IP created in the step before.

## Configure OIDC (AD Integration) plugin

hashicorp_kv_name=kv-hashicorp-vault-vvc # You need to have access key permission to read key on this keyvault. This is the keyvault created by level3/management/vault/non_prod
ad_vault_app_id=$(az keyvault secret show --name "vault-non-prod-app-1-client-id" --vault-name "$hashicorp_kv_name" --query "value" -o tsv)
ad_vault_app_client_secret=$(az keyvault secret show --name "vault-non-prod-app-1-client-secret" --vault-name "$hashicorp_kv_name" --query "value" -o tsv)


# In order to use AD groups to authenticate to Vault, you need to update the Vault application in Azure with a claim for group membership information.
# Create a file named manifest.json with the specification for an ID token for an AD group.
# As of today, CAF does not support this.
cat > manifest.json << EOF
{
 "idToken": [
     {
         "name": "groups",
         "additionalProperties": []
     },
     {
         "name": "email",
         "additionalProperties": []
     }
 ]
}
EOF
# Update the application with the claims manifest in manifest.json and set groupMembershipClaims to SecurityGroup. You can expand the group type to additional groups.

az ad app update --id "$ad_vault_app_id" \
    --set groupMembershipClaims=SecurityGroup \
    --optional-claims @manifest.json


### add to trust anchor (root CA) to trust store in order to communicate with vault API
sudo apt-get install -y ca-certificates
sudo cp out/keymate_International_Non-Production_Intermediate_CA1_v1.crt /usr/local/share/ca-certificates
sudo update-ca-certificates

## Create Vault policies for an example group
cat > kv-reader-policy.hcl << EOF
path "secret/*" {
    capabilities = ["read", "list"]
}
EOF
export VAULT_TOKEN=$(jq -r .root_token cluster-keys.json)
vault policy write kv-reader kv-reader-policy.hcl
vault secrets enable -path=secret -version=2 kv

export VAULT_ADDR=https://vault.keymatehosting.internal:8200
export VAULT_OIDC_ADDR=https://vault.keymatehosting.internal:8250
export AD_TENANT_ID=07854bea-1ad0-4a14-b1e5-c5da8ff45eb7


## Configure Vault with the OIDC auth method
export VAULT_LOGIN_ROLE=app-dev
vault auth enable oidc

vault write auth/oidc/config \
    oidc_client_id="$ad_vault_app_id" \
    oidc_client_secret="$ad_vault_app_client_secret" \
    default_role="${VAULT_LOGIN_ROLE}" \
    oidc_discovery_url="https://login.microsoftonline.com/${AD_TENANT_ID}/v2.0"

vault write auth/oidc/role/${VAULT_LOGIN_ROLE} \
   user_claim="email" \
   role_type="oidc" \
   allowed_redirect_uris="http://localhost:8250/oidc/callback" \
   allowed_redirect_uris="${VAULT_ADDR}/ui/vault/auth/oidc/oidc/callback" \
   groups_claim="groups" \
   policies="kv-reader" \
   oidc_scopes="https://graph.microsoft.com/.default" \
   verbose_oidc_logging="false"


## Set up a Vault external group for the AD group (TODO)

export AD_GROUP_ID=$(az ad group show \
   --group <Azure AD group display name> \
   --query objectId -o tsv)


export VAULT_GROUP_ID=$(vault write \
   -field=id -format=table \
   identity/group \
   name="${VAULT_LOGIN_ROLE}" \
   type="external" \
   policies="kv-reader")


export VAULT_OIDC_ACCESSOR_ID=$(vault auth list -format=json | \
   jq -r '."oidc/".accessor')
