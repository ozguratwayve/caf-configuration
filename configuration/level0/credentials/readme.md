
### Generate launchpad credentials

```bash
# For manual bootstrap:
# Login to the subscription keymatedev-management with the user william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com
rover login -t keymatedev.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-id-vuy.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level0/credentials \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env pildev \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml ignite.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  --impersonate-sp-from-keyvault-url https://pildev-kv-id-vuy.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level0/credentials \
  -tfstate_subscription_id 16e59691-bf0d-44ec-acbe-9797f673378d \
  -target_subscription 16e59691-bf0d-44ec-acbe-9797f673378d \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env pildev \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a apply

```

```bash
# On success, re-execute the rover ignite

ansible-playbook /tf/caf/landingzones/templates/ansible/ansible.yaml \
  --extra-vars "@/tf/caf/platform/definition/ignite.yaml"

```

Now if you refresh the readme of the credentials deployment, you will notice the rover command has been updated to impersonate the execution of the rover based on the credentials that have just been created and stored in the keyvault. The goal here is to execute the deployment steps using the same privileges that will be used later when using a pipeline.

Just re-execute the plan/apply command as above and you will notice the rover will login as the identity service principal. When executed, execute a rover logout as the next step will be executed under a different security context.

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the subscription services](../../level1/subscriptions/readme.md)
