# Initialising Vault

## Run once
notice the recovery seal type is azurekeyvault and the initialized status is false.

```bash
$ kubectl exec hashicorp-vault-0  -n vault -- vault status
Key                      Value
---                      -----
Recovery Seal Type       azurekeyvault
Initialized              false
Sealed                   true
Total Recovery Shares    0
Threshold                0
Unseal Progress          0/0
Unseal Nonce             n/a
Version                  1.9.4
Storage Type             raft
HA Enabled               true
command terminated with exit code 2
```

## Initialising Vault
Security operator to run the command below on a secured endpoint in a secured location (no shoulder-surfing). Security operator provide each key-holder a uniquely distributed key-share. the example below assumes there are 5 key-holders (C-Level?) and agree that 3 out of the 5 key-holders need to be present in the event Vault needs unsealing (e.g. after a disaster)
```bash
$ kubectl exec hashicorp-vault-0 -n vault -- vault operator init -key-shares=5 -key-threshold=3 -format=json > cluster-keys.json
```

The security operator may receive an error: 'error: unable to upgrade connection: container not found ("vault")'. The pod is most likely stuck in a crashloop due to failing the liveness probe defined in the [Helm deployment manifest](../../override-values.yaml). To resolve this issue, run the command below before the liveness probe kicks in (initialDelaySeconds set to 60 seconds). The command will cause Kubernetes to restart a new Vault instance.
```bash
kubectl delete po hashicorp-vault-0
```

Checking vault status again shows its now initialized. the recovery seal type is azurekeyvault but the output says shamir - there is an open issue with Hashicorp: https://github.com/hashicorp/vault/issues/9471
```bash
kubectl exec hashicorp-vault-0 -- vault status
Key                      Value
---                      -----
Recovery Seal Type       shamir
Initialized              true
Sealed                   false
Total Recovery Shares    5
Threshold                3
Version                  1.9.4
Storage Type             raft
Cluster Name             vault-cluster-4e557946
Cluster ID               dbe0a83c-b0d2-29b1-9edf-cbd323cc744f
HA Enabled               true
HA Cluster               https://hashicorp-vault-0.hashicorp-vault-internal:8201
HA Mode                  active
Active Since             2022-04-19T09:37:12.726726013Z
Raft Committed Index     41
Raft Applied Index       41
```
