# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- bf713c74-f65e-4403-90d1-184cc5bbb52d [pol-dev-dm]
-->

```bash
rover login -t keymatehosting.com -s pol-dev-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/pol-dev-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription pol-dev-dm \
  -tfstate pol_dev_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```