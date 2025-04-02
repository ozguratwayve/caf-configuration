# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- 0e44961b-5d2a-4205-a9d9-222d60f02837 [nab-dev-dm]
-->

```bash
rover login -t keymatehosting.com -s nab-dev-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/nab-dev-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription nab-dev-dm \
  -tfstate nab_dev_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```