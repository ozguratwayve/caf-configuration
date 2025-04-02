
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription keymatedev-management with the user william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com
rover login -t keymatedev.onmicrosoft.com -s 16e59691-bf0d-44ec-acbe-9797f673378d

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-scp-qio.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate platform_subscriptions.tfstate \
  -env pildev \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)