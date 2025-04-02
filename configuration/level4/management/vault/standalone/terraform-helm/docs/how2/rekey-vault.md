# How-to rekey vault (recovery-keys) when using auto-unseal

## Introduction
When a Vault server is first initialized, Vault generates a master key and immediately splits this master key into a series of key shares following Shamir's Secret Sharing Algorithm. Just as the initialization process with a Shamir seal yields unseal keys, initializing with an Auto Unseal yields recovery keys.

The process for generating a new master key (or recovery key in case of auto-unseal) and applying Shamir's algorithm is called "rekeying".



**Note:** Recovery keys cannot decrypt the master key, and thus are not sufficient to unseal Vault if the AutoUnseal mechanism isn't working. They are purely an authorization mechanism.



The ```operator rekey``` command generates a new set of unseal (or recovery) keys. This can optionally change the total number of key shares or the required threshold of those key shares to reconstruct the master key. This operation is zero downtime, but it requires the Vault is unsealed and a quorum of existing unseal (recovery) keys are provided.

## Expected Outcome
This guide includes steps to rekey vault [(Recovery keys)](https://www.vaultproject.io/docs/concepts/seal#recovery-key-rekeying) when auto-unseal is in use.

## Prerequisites (if applicable)
This guide applies to vault using auto-unseal. If you want to rekey vault using Shamir unseal keys please follow [rekeying-vault-Shamir](https://learn.hashicorp.com/tutorials/vault/rekeying-and-rotating#rekeying-vault).
User should have required permissions to run ```vault operator rekey```

## Use Case
Here are some of examples when master key and key shares re-generation is required:

* Someone joins or leaves the organization
* Security wants to change the number of shares or threshold of shares
* Compliance mandates the master key be rotated at a regular interval

## Procedure
As we are going to rekey vault recovery keys each ```vault rekey```> command should use ```-target=recovery```. Below are example steps:

* Initialize rekey process - In example below we have asked to generate 5 recovery keys with threshold of 3.

```bash
vault operator rekey -target=recovery -init -key-shares=5 -key-threshold=3
```

```bash
# example

$ vault operator rekey -target=recovery -init -key-shares=5 -key-threshold=3

WARNING! If you lose the keys after they are returned, there is no recovery.
Consider canceling this operation and re-initializing with the -pgp-keys flag
to protect the returned unseal keys along with -backup to allow recovery of
the encrypted keys in case of emergency. You can delete the stored keys later
using the -delete flag.

Key Value
--- -----
Nonce d5d1b16a-bdca-9204-9d72-ce9fc46c48dc
Started true
Rekey Progress 0/1
New Shares 5
New Threshold 3
Verification Required false
```

* rekey process can be initialized with -verify option. If this option is used, user must verify new keys before these can be used.

```bash
vault operator rekey -target=recovery -init -key-shares=5 -key-threshold=3 -verify
```

```bash
# example (Verification Required is true)

$ vault operator rekey -target=recovery -init -key-shares=5 -key-threshold=3 -verify
WARNING! If you lose the keys after they are returned, there is no recovery.
Consider canceling this operation and re-initializing with the -pgp-keys flag
to protect the returned unseal keys along with -backup to allow recovery of
the encrypted keys in case of emergency. You can delete the stored keys later
using the -delete flag.

Key Value
--- -----
Nonce 4059ac5d-f2ec-1bab-47c3-2d4071fedc7c
Started true
Rekey Progress 0/3
New Shares 5
New Threshold 3
Verification Required true
```

* Start Rekey - this step will require current recovery keys and should be run for "Threshold" number of times, once threshold number of keys are provide, new recovery keys will be emitted as output. These new keys should be stored in a secure location (or shared among key holders securely).

```bash
vault operator rekey -target=recovery
```

```bash
# example

$ vault operator rekey -target=recovery
Rekey operation nonce: d5d1b16a-bdca-9204-9d72-ce9fc46c48dc
Unseal Key (will be hidden):

Key 1: ykoobfz+gLF3azgJkTMq9CXMpdNCYzNlxwHvj82JdelP
Key 2: M3WMyefcDfQoH2hKXWRRH54MqyxR4ZpniTV1ToUzcNV1
Key 3: yh48Oha4OTghds1o8QRjQSIPLBwdKylZ+LK4feRNSEOP
Key 4: R6ve8QCwb9jdH8Z1cXcwHseqXjKP0x+MJAgFSgVJSuQf
Key 5: UIB2pQzir7V+zg+dBFyBJvagU3brekMsJV2hvvy/NacG

Operation nonce: d5d1b16a-bdca-9204-9d72-ce9fc46c48dc

Vault rekeyed with 5 key shares and a key threshold of 3. Please securely
distribute the key shares printed above. When Vault is re-sealed, restarted,
or stopped, you must supply at least 3 of these keys to unseal it before it
can start servicing requests.
```

* Any time during rekey status of reky progress can be checked using below command.

```bash
vault operator rekey -target=recovery -status
```

```bash
# example

vault operator rekey -target=recovery -status
Key Value
--- -----
Nonce 4059ac5d-f2ec-1bab-47c3-2d4071fedc7c
Started true
Rekey Progress 1/3
New Shares 5
New Threshold 3
Verification Required true
```

* rekey process can be canceled as below (say in case, not all recovery key holders are available)

```bash
vault operator rekey -cancel -target=recovery
# example

$ vault operator rekey -target=recovery -cancel
Success! Canceled rekeying (if it was started)

# check status again
$ vault operator rekey -target=recovery -status
Key Value
--- -----
Nonce n/a
Started false
```

## Additional Information
* [https://support.hashicorp.com/hc/en-us/articles/4404364271763-How-to-rekey-vault-recovery-keys-when-using-auto-unseal](https://support.hashicorp.com/hc/en-us/articles/4404364271763-How-to-rekey-vault-recovery-keys-when-using-auto-unseal)
* [https://www.vaultproject.io/docs/concepts/seal#seal-unseal](https://www.vaultproject.io/docs/concepts/seal#seal-unseal)
* [https://learn.hashicorp.com/tutorials/vault/rekeying-and-rotating](https://learn.hashicorp.com/tutorials/vault/rekeying-and-rotating)
* [https://www.vaultproject.io/docs/commands/operator/rekey#operator-rekey](https://www.vaultproject.io/docs/commands/operator/rekey#operator-rekey)