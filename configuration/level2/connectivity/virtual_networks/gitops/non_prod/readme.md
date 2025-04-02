
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t keymate-cibc.com

rover \
  --impersonate-sp-from-keyvault-url https://cibc-kv-co-lrv.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/virtual_networks/gitops/non_prod \
  -tfstate_subscription_id e163910f-b8df-4b7e-8336-8f95a67ca478 \
  -target_subscription e163910f-b8df-4b7e-8336-8f95a67ca478 \
  -tfstate connectivity_virtual_networks_gitops_non_prod.tfstate \
  -env cibc \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_virtual_networks_gitops_non_prod.tfstate.tfplan \
  -a plan

```