#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {
  # deployed manually
  cibc_dev = {
    name            = "cibc-dev"
    create_alias    = false
    subscription_id = "443a5b65-2ab6-44ef-87a0-9063211e91c8"
  }
  tfazure_datamesh_dev = {
    name            = "keymatedev-data-mesh"
    create_alias    = false
    subscription_id = "a6e36c1a-2761-467f-a7b8-70cedc1993e3"
  }
  cibc_test = {
    name            = "cibc-test"
    create_alias    = false
    subscription_id = "11da1544-d399-4830-8f9f-99801760db74"
  }
  cibc_sit = {
    name            = "cibc-sit"
    create_alias    = false
    subscription_id = "2944818d-0871-4e27-8dd3-be18998b07bd"
  }
  keymatedev_tfazure_shared_services = {
    name            = "keymatedev-tfazure-shared-services"
    create_alias    = false
    subscription_id = "7c224083-e8f3-43c2-8519-420301edd1d4"
  }
  nab_dev0 = {
    name            = "nab-dev0"
    create_alias    = false
    subscription_id = "7f21a72c-9a04-4695-97f5-dbd2c59acf1a"
  }
  nab_perf0 = {
    name            = "nab-perf0"
    create_alias    = false
    subscription_id = "eff01273-0812-4aee-9ecb-26aa3125bbeb"
  }
  nab_sit0 = {
    name            = "nab-sit0"
    create_alias    = false
    subscription_id = "492af47f-e29e-4e20-ae0b-a268adc8752b"
  }
  nab_test0 = {
    name            = "nab-test0"
    create_alias    = false
    subscription_id = "56f07937-9778-4af5-9362-b99e73b8dbf2"
  }
  pol_dev = {
    name            = "pol-dev"
    create_alias    = false
    subscription_id = "a57c49dc-cb12-4154-bbc0-e8b352c20ca6"
  }
  pol_test = {
    name            = "pol-test"
    create_alias    = false
    subscription_id = "9c266e6c-1a0c-4d74-be33-6b8c11d0808f"
  }
  tyl_dev0 = {
    name            = "tyl-dev0"
    create_alias    = false
    subscription_id = "22c1aa00-82fd-4fa7-a76c-a0c25c139973"
  }
  tyl_test0 = {
    name            = "tyl-test0"
    create_alias    = false
    subscription_id = "ec427bdd-95f7-424a-9366-3171d83be397"
  }
}
