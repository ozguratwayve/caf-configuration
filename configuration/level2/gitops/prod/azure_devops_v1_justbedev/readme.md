# Azure DevOps Agents VM

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/azure_devops_v1 \
  -var-folder /tf/caf/configuration/level2/gitops/prod/azure_devops_v1_albumeradev_prod \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate azure_devops_v1_albumeradev_prod.tfstate \
  -env pildev \
  -level level2 \
  -p ${TF_DATA_DIR}/azure_devops_v1_albumeradev_prod.tfstate.tfplan \
  -a plan

```
