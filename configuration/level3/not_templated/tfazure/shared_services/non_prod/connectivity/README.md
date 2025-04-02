# TF-Azure Shared Services Connectivity Landing Zone (tfazure_shared_svc)

This landing zone is used for deploying TF-Azure Landing Zones.

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

# cd /tf/caf/landingzones
# git fetch origin
# git checkout 2203.1

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/shared_services/non_prod/connectivity \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate tfazure_shared_svc_connectivity.tfstate \
  -env pildev \
  -level level3 \
  -p ${TF_DATA_DIR}/tfazure_shared_svc_connectivity.tfstate.tfplan \
  -a plan

```

