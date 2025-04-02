# TF-Azure Shared Services Landing Zone (tfazure_shared_svc)

This landing zone is used for deploying TF-Azure Landing Zones.

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t keymatedev.onmicrosoft.com

# cd /tf/caf/landingzones
# git fetch origin
# git checkout 2203.1

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/not_templated/tfazure/shared_services/non_prod \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 7c224083-e8f3-43c2-8519-420301edd1d4 \
  -tfstate tfazure_shared_svc.tfstate \
  -env pildev \
  -level level3 \
  -p ${TF_DATA_DIR}/tfazure_shared_svc.tfstate.tfplan \
  -a plan

```

