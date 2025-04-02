
# enable Azure Auth
https://learn.hashicorp.com/tutorials/vault/oidc-auth-azure?in=vault/auth-methods


The following lines are done by caf (/credentials landing zone)
```
# export VAULT_ADDR=<your Vault server address (and port if not default)>
#
#
# export AD_AZURE_DISPLAY_NAME=vault-<unique identifier>
#
#
# export AD_VAULT_APP_ID=$(az ad app create \
#    --display-name ${AD_AZURE_DISPLAY_NAME} \
#    --reply-urls "http://localhost:8250/oidc/callback" \
#    "${VAULT_ADDR}/ui/vault/auth/oidc/oidc/callback" | \
#    jq -r '.appId')
#
#
# export AD_MICROSOFT_GRAPH_API_ID=$(az ad sp list \
#    --filter "displayName eq 'Microsoft Graph'" \
#    --query '[].appId' -o tsv)
#
#
# export AD_PERMISSION_GROUP_MEMBER_READ_ALL_ID=$(az ad sp show \
#    --id ${AD_MICROSOFT_GRAPH_API_ID} \
#    --query "oauth2Permissions[?value=='GroupMember.Read.All'].id" -o tsv)
#
#
# az ad app permission add \
#    --id ${AD_VAULT_APP_ID} \
#    --api ${AD_MICROSOFT_GRAPH_API_ID} \
#    --api-permissions ${AD_PERMISSION_GROUP_MEMBER_READ_ALL_ID}=Scope
# **NOTE: If you would want to use UPN instead of email, you may need to add ## additional permissions such as User.Read and profile.**
#
# az ad sp create --id ${AD_VAULT_APP_ID}
#
#
# az ad app permission grant --id ${AD_VAULT_APP_ID} \
#     --api ${AD_MICROSOFT_GRAPH_API_ID}
```

 export AD_TENANT_ID=$(az ad sp show --id ${AD_VAULT_APP_ID} \
    --query 'appOwnerTenantId' -o tsv)


 export AD_CLIENT_SECRET=$(az ad app credential reset \
     --id ${AD_VAULT_APP_ID} | jq -r '.password')



cat > manifest.json << EOF
{
    "idToken": [
        {
            "name": "groups",
            "additionalProperties": []
        }
    ]
}
EOF



az ad app update --id ${AD_VAULT_APP_ID} \
    --set groupMembershipClaims=SecurityGroup \
    --optional-claims @manifest.json


## Create Vault policies for an example group

export VAULT_TOKEN=<your Vault token>


cat > kv-reader-policy.hcl << EOF
path "secret/*" {
    capabilities = ["read", "list"]
}
EOF

### add to trust anchor (root CA) to trust store
sudo apt-get install -y ca-certificates
sudo cp out/keymate_Root_CA.crt /usr/local/share/ca-certificates
sudo update-ca-certificates


vault policy write kv-reader kv-reader-policy.hcl


vault secrets enable -path=secret -version=2 kv


## Configure Vault with the OIDC auth method
export VAULT_LOGIN_ROLE=app-dev

vault auth enable oidc

vault write auth/oidc/config \
    oidc_client_id="${AD_VAULT_APP_ID}" \
    oidc_client_secret="${AD_CLIENT_SECRET}" \
    default_role="${VAULT_LOGIN_ROLE}" \
    oidc_discovery_url="https://login.microsoftonline.com/${AD_TENANT_ID}/v2.0"

vault write auth/oidc/role/${VAULT_LOGIN_ROLE} \
   user_claim="email" \
   allowed_redirect_uris="http://localhost:8250/oidc/callback" \
   allowed_redirect_uris="${VAULT_ADDR}/ui/vault/auth/oidc/oidc/callback"  \
   groups_claim="groups" \
   policies="kv-reader" \
   oidc_scopes="https://graph.microsoft.com/.default"


## Set up a Vault external group for the AD group
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

