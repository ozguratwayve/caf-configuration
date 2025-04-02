# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- 3bcb32fa-669a-40bd-a445-c4ada417bf21 [nab-sit-dm]
-->

```bash
rover login -t keymatehosting.com -s nab-sit-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/nab-sit-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription nab-sit-dm \
  -tfstate nab_sit_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```