
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t keymatedev.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-co-cge.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/secure_firewalls/non_prod \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate connectivity_secure_firewalls_non_prod.tfstate \
  -env pildev \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_secure_firewalls_non_prod.tfstate.tfplan \
  -a plan

```

