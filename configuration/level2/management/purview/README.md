
# Purview
Deploy Microsoft Purview for data governance

## Documentation
-

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t keymatedev.onmicrosoft.com -s 16e59691-bf0d-44ec-acbe-9797f673378d

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/management/purview \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 4cd379eb-f224-4866-83d3-bf135e5131fa \
  -tfstate management_purview.tfstate \
  -env pildev \
  -level level2 \
  -p ${TF_DATA_DIR}/management_purview.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)