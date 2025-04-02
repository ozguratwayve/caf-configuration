# CIBC Development Landing Zone (cibc_dev)

Most resources will be deployed out of band, using TF-Azure



```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

# cd /tf/caf/landingzones
# git fetch origin
# git checkout 2203.1

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/sre_sbox \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 858a138f-500a-4fdd-ab1a-1a54a59d0abd \
  -tfstate sre_sbox.tfstate \
  -env pildev \
  -level level3 \
  -p ${TF_DATA_DIR}/sre_sbox.tfstate.tfplan \
  -a plan

```

