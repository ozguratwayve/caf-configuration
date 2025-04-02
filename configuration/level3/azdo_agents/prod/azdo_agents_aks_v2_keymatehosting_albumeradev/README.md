
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t keymatedev.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/aks_azure_devops_agents_v2 \
  -var-folder /tf/caf/configuration/level3/azdo_agents/prod/azdo_agents_aks_v2_keymatehosting_albumeradev \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate azdo_agents_aks_keymatehosting_prod_albumeradev.tfstate \
  -env pildev \
  -level level3 \
  -p ${TF_DATA_DIR}/azdo_agents_aks_keymatehosting_prod_albumeradev.tfstate.tfplan \
  -a plan

```
