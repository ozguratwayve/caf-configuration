# Datamesh Landing Zone
<!--
login a with a user who is a member of caf-platform-maintainers group.
- 16e59691-bf0d-44ec-acbe-9797f673378d [keymatedev-management]
- b2e887c1-f61a-4ac3-9dae-8b9a24da3972 [nab-test-dm]
-->

```bash
rover login -t keymatehosting.com -s nab-test-dm
```

```
rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-mg-yan.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/datamesh/nab-test-dm \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription nab-test-dm \
  -tfstate nab_test_dm.tfstate \
  -env pildev \
  -level level3 \
  -parallelism 60 \
  -a plan
```