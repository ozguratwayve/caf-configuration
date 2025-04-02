# Azure DevOps Agents VM

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/azure_devops_agent \
  -var-folder /tf/caf/configuration/level1/not_templated/gitops/azure_devops_agents_vm/prod \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription keymatedev-management-prod \
  -tfstate azdo_agents_vm_prod.tfstate \
  -env pildev \
  -level level1 \
  -p ${TF_DATA_DIR}/azdo_agents_vm_prod.tfstate.tfplan \
  -a plan

```

