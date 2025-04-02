
# Build Certificate Authority (CA) in Vault with an Offline Root


## Prerequisites
https://learn.hashicorp.com/tutorials/vault/pki-engine-external-ca


## Air-gapped offline root CA
setup your air-gapped root CA computer with the neccesary tools before taking it permanently offline (permanently disconnected from any network)
```bash
# build certstrap using Golang
git clone https://github.com/square/certstrap.git
cd certstrap
go build
```

**The Vault operator must perform the next steps on the air-gapped computer (offline)**

```bash
# create the offline Root CA, select a very strong password for protecting the CA key
./certstrap init \
     --expires "30 year" \
     --organization "keymate International" \
     --organizational-unit "Technology" \
     --country "GB" \
     --province "Greater London" \
     --locality "London" \
     --common-name "keymate International Non-Production Root CA" \
     --exclude-path-length

# check subject attributes are correct
openssl x509 -in out/keymate_International_Non-Production_Root_CA.crt -noout  -subject -issuer

# create the intermediate CA certificate request
./certstrap request-cert \
     --organization "keymate International" \
     --organizational-unit "Technology" \
     --country "GB" \
     --province "Greater London" \
     --locality "London" \
     --common-name "keymate International Non-Production Intermediate CA1 v1" \
     --domain "localhost" \
     --ip "127.0.0.1"

# # sign the intermediate certificate request (CSR) with the Root CA
./certstrap sign \
     --expires "2 year" \
     --csr out/keymate_International_Non-Production_Intermediate_CA1_v1.csr \
     --cert out/keymate_International_Non-Production_Intermediate_CA1_v1.crt \
     --intermediate \
     --CA "keymate International Non-Production Root CA" \
     "localhost"


# Request hashicorp vault server certificate
./certstrap request-cert \
     --passphrase "" \
     --organization "keymate International" \
     --organizational-unit "Technology" \
     --country "GB" \
     --province "Greater London" \
     --locality "London" \
     --common-name "vault.keymatehosting.internal" \
     --domain "localhost,*.hashicorp-vault-internal,vault.keymatehosting.internal" \
     --ip "127.0.0.1"

# # sign the intermediate vault certificate request (CSR) with the intermediate CA
./certstrap sign \
     --expires "2 year" \
     --csr out/vault.keymatehosting.internal.csr \
     --cert out/vault.keymatehosting.internal.crt \
     --CA "keymate International Non-Production Intermediate CA1 v1" \
     "localhost"

# # chain the certificates
 cat out/keymate_International_Non-Production_Root_CA.crt out/keymate_International_Non-Production_Intermediate_CA1_v1.crt out/vault.keymatehosting.internal.crt > out/vault.keymatehosting.internal_chain.crt

# # verify the chain is okay
openssl verify -CAfile out/vault.keymatehosting.internal_chain.crt out/vault.keymatehosting.internal.crt

```

**Immediately backup** the root certificate and private key
e.g. backup the root certificate and private key by storing it in a phsycially protected safe in a secured building with restricted access. Access to the safe must be recorded and authorised by keymate's current CISO.
* keymate_International_Non-Production_Root_CA.key
* keymate_International_Non-Production_Root_CA.crt

**Manually transfer** the following files onto a secured computer with a network connection using a **clean USB drive**
* keymate_International_Non-Production_Intermediate_CA1_v1.key
* keymate_International_Non-Production_Intermediate_CA1_v1.crt
* vault.keymatehosting.internal.key
* vault.keymatehosting.internal.crt



## Upload the Intermediate CA and Certificates into Vault
Connect the USB drive created in the [previous step](#air-gapped-offline-root-ca) to your secured commputer with network conection. Upload the certificates as k8s secret for Vault to use (Vault won't start without it).

```bash
kubectl create ns vault

kubectl create secret generic tls-server \
        --namespace vault \
        --from-file=server.key=out/vault.keymatehosting.internal.key \
        --from-file=server.crt=out/vault.keymatehosting.internal.crt

kubectl create secret generic tls-ca \
        --namespace vault \
        --from-file=ca.crt=<(cat out/keymate_International_Non-Production_Intermediate_CA1_v1.crt out/keymate_International_Non-Production_Root_CA.crt)
```

## Create your Vault (unseal) key in Azure Key Vault
**note:** make sure you are connected to private network (e.g. P81 VPN) as the Hashicorp Vault Azure Key Vault is only accessible internally.

```bash
vaultName=kv-hashicorp-vault
now=$(date +'%Y-%m-%dT%H:%M:%SZ')
expiry=$(date -d "2 years" +'%Y-%m-%dT%H:%M:%SZ')

az keyvault key create --disabled false \
                       --expires $expiry \
                       --exportable false \
                       --kty { "RSA-HSM" for production, "RSA" for non-prod} \
                       --name vault-key \
                       --not-before $now \
                       --ops wrapKey unwrapKey \
                       --protection {"hsm" for production, "software" for non-prod} \
                       --size 2048 \
                       --tags classification=secret \
                              owner=security@keymate.co.uk \
                              purpose="Hashicorp Vault auto-unseal key"
                       --vault-name $vaultName
```

define rotation policy (preview as of March 2022)

```bash
keyName=vault-key
vaultName=pildev-kv-vault-nbm
now=$(date +'%Y-%m-%dT%H:%M:%SZ')
expiry=$(date -d "2 years" +'%Y-%m-%dT%H:%M:%SZ')

# "timeAfterCreate": "P3M", // ISO 8601 duration. For example: 90 days is "P90D", 3 months is "P3M", and 48 hours is "PT48H".
# "timeBeforeExpiry" : "P30D" // ISO 8601 duration.
# "expiryTime": "P2Y" // ISO 8601 duration.
cat <<EOF > rotation-policy.json
{
  "lifetimeActions": [
    {
      "trigger": {
        "timeAfterCreate": "P3M",
        "timeBeforeExpiry" : null
      },
      "action": {
        "type": "Rotate"
      }
    },
    {
      "trigger": {
        "timeBeforeExpiry" : "P30D"
      },
      "action": {
        "type": "Notify"
      }
    }
  ],
  "attributes": {
    "expiryTime": "P2Y"
  }
}
EOF

az keyvault key rotation-policy update -n $keyName --vault-name $vaultName --value ./rotation-policy.json
```
