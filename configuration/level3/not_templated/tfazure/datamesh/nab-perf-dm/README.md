# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- b6d81e15-d668-4e5b-8d18-dcb233c86431 [nab-perf-dm]
-->

```bash
rover login -t keymatehosting.com -s nab-perf-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/nab-perf-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription nab-perf-dm \
  -tfstate nab_perf_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```