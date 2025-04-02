# Identity

## Deploy Identity
Deploy the identity services (not templated yet using Ignite)

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t keymatedev.onmicrosoft.com -s 16e59691-bf0d-44ec-acbe-9797f673378d

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-id-vuy.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/not_templated/identity \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate not_templated_identity.tfstate \
  -env pildev \
  -level level1 \
  -p ${TF_DATA_DIR}/not_templated_identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)

