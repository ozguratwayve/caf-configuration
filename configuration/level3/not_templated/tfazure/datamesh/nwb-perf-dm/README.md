# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- 5fd4d674-227e-48ce-9f9d-b0dc3e5e78f8 [nwb-perf-dm]
-->

```bash
rover login -t keymatehosting.com -s nwb-perf-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/nwb-perf-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription nwb-perf-dm \
  -tfstate nwb_perf_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```