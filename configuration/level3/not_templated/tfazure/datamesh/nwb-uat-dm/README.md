# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- 907fdf9f-0793-4c9e-bb11-11ac3601dc35 [nwb-uat-dm]
-->

```bash
rover login -t keymatehosting.com -s nwb-uat-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/nwb-uat-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription nwb-uat-dm \
  -tfstate nwb_uat_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```