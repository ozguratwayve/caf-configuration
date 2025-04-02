# CIBC Development Landing Zone (nab_dev0)

Most resources will be deployed out of band, using TF-Azure



```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

# cd /tf/caf/landingzones
# git fetch origin
# git checkout 2203.1

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/nab_dev0 \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 443a5b65-2ab6-44ef-87a0-9063211e91c8 \
  -tfstate nab_dev0.tfstate \
  -env pildev \
  -level level3 \
  -p ${TF_DATA_DIR}/nab_dev0.tfstate.tfplan \
  -a plan

```

