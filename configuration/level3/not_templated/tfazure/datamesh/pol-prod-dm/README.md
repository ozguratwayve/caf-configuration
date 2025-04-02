# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- 40c10189-007b-49a9-88eb-8ed1306b1627 [pol-prod-dm]
-->

```bash
rover login -t keymatehosting.com -s pol-prod-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/pol-prod-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription pol-prod-dm \
  -tfstate pol_prod_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```