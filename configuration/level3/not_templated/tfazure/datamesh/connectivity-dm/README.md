# Datamesh Connectivity Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
-->

```bash
rover login -t keymatehosting.com -s 16e59691-bf0d-44ec-acbe-9797f673378d
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/connectivity-dm\
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate connectivity_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```

<!-- Note: This landingzone is required due to the bug https://github.com/Azure/caf-terraform-landingzones/issues/360. When fixed, we can move the code back to main *-dm landingzone. -->