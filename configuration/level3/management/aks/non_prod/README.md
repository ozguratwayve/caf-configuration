
```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

# cd /tf/caf/landingzones
# git fetch origin
# git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/management/aks/non_prod \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate management_aks_non_prod.tfstate \
  -env pildev \
  -level level3 \
  -p ${TF_DATA_DIR}/management_aks_non_prod.tfstate.tfplan \
  -a plan

```

