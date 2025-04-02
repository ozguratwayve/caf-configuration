# gitops connectivity

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatehosting.com
cd /tf/caf/landingzones
git fetch origin
git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/not_templated/gitops/gitops_connectivity/prod \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription keymatedev-management \
  -tfstate gitops_connectivity_prod.tfstate \
  -env pildev \
  -level level1 \
  -p ${TF_DATA_DIR}/gitops_connectivity_prod.tfstate.tfplan \
  -a plan

```

