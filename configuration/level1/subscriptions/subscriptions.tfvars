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
  management = {
    name            = "keymatedev-management"
    create_alias    = false
    subscription_id = "16e59691-bf0d-44ec-acbe-9797f673378d"
  }
  keymatedev_caf_data_management = {
    name            = "keymatedev-caf-data-management"
    create_alias    = false
    subscription_id = "4cd379eb-f224-4866-83d3-bf135e5131fa"
    # tags = {
    #   businessUnit = "Data Governance"
    #   environment  = "Enterprise"
    #   costcenter   = "0"
    # }
  }
  keymatedev_tfazure_shared_services = {
    name            = "keymatedev-tfazure-shared-services"
    create_alias    = false
    subscription_id = "7c224083-e8f3-43c2-8519-420301edd1d4"
  }
  keymatedev_caf_shared_services = {
    name            = "keymatedev-caf-shared-services"
    create_alias    = false
    subscription_id = "0b1721ec-b6df-477a-9775-cefc9cfa984f"
  }
  cibc_dev = {
    name            = "cibc-dev"
    create_alias    = false
    subscription_id = "443a5b65-2ab6-44ef-87a0-9063211e91c8"
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
  keymatedev_ob_test = {
    name            = "keymatedev-ob-test"
    create_alias    = false
    subscription_id = "4e5213b8-8a12-4485-ad08-4f6bb4ec4037"
  }
  keymatedev_ace_dev = {
    name            = "keymatedev-ace-dev"
    create_alias    = false
    subscription_id = "9cce8459-e175-4dcd-893b-451ca0b1b99b"
  }
  plive_dev = {
    name            = "plive-dev"
    create_alias    = false
    subscription_id = "b72d3735-2dac-4dd9-ab15-b751b1eb0f51"
  }
  keymatedev_sre_sandpit = {
    name            = "keymatedev-sre-sandpit"
    create_alias    = false
    subscription_id = "858a138f-500a-4fdd-ab1a-1a54a59d0abd"
  }
  keymatedev_architecture_sandpit = {
    name            = "keymatedev-architecture-sandpit"
    create_alias    = false
    subscription_id = "6713c323-5488-4cc9-a97b-c4628b401dca"
  }
  loupe_prod = {
    name            = "loupe-prod"
    create_alias    = false
    subscription_id = "e21b42f3-0baa-48d7-83b6-846675ea2ce0"
  }
  keymatedev_management_prod = {
    name            = "keymatedev-management-prod"
    create_alias    = false
    subscription_id = "d72a8fbf-734e-4d49-a5ad-53fcf9cd2bae"
  }
  nab_dev0 = {
    name            = "nab-dev0"
    create_alias    = false
    subscription_id = "7f21a72c-9a04-4695-97f5-dbd2c59acf1a"
  }
  nab_test0 = {
    name            = "nab-test0"
    create_alias    = false
    subscription_id = "56f07937-9778-4af5-9362-b99e73b8dbf2"
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

  # Datamesh Subscriptions
  cibc_dev_dm = {
    name            = "cibc-dev-dm"
    create_alias    = false
    subscription_id = "727700f0-5e65-40a6-8d51-0e887b7cf722"
  }
  cibc_sit_dm = {
    name            = "cibc-sit-dm"
    create_alias    = false
    subscription_id = "0aa31301-7cf4-437a-a768-779cc7d5c982"
  }
  cibc_test_dm = {
    name            = "cibc-test-dm"
    create_alias    = false
    subscription_id = "b012a63f-cf1b-4f54-b089-b9e107cadda4"
  }
  nab_dev_dm = {
    name            = "nab-dev-dm"
    create_alias    = false
    subscription_id = "0e44961b-5d2a-4205-a9d9-222d60f02837"
  }
  nab_sit_dm = {
    name            = "nab-sit-dm"
    create_alias    = false
    subscription_id = "3bcb32fa-669a-40bd-a445-c4ada417bf21"
  }
  nab_test_dm = {
    name            = "nab-test-dm"
    create_alias    = false
    subscription_id = "b2e887c1-f61a-4ac3-9dae-8b9a24da3972"
  }
  nab_perf_dm = {
    name            = "nab-perf-dm"
    create_alias    = false
    subscription_id = "b6d81e15-d668-4e5b-8d18-dcb233c86431"
  }
  nwb_perf_dm = {
    name            = "nwb-perf-dm"
    create_alias    = false
    subscription_id = "5fd4d674-227e-48ce-9f9d-b0dc3e5e78f8"
  }
  nwb_test_dm = {
    name            = "nwb-test-dm"
    create_alias    = false
    subscription_id = "0bb532f3-4c7c-4937-be02-4e9b6c162f93"
  }
  nwb_uat_dm = {
    name            = "nwb-uat-dm"
    create_alias    = false
    subscription_id = "907fdf9f-0793-4c9e-bb11-11ac3601dc35"
  }
  pol_prod_dm = {
    name            = "pol-prod-dm"
    create_alias    = false
    subscription_id = "40c10189-007b-49a9-88eb-8ed1306b1627"
  }
  pol_dev_dm = {
    name            = "pol-dev-dm"
    create_alias    = false
    subscription_id = "bf713c74-f65e-4403-90d1-184cc5bbb52d"
  }
  pol_poc_dm = {
    name            = "pol-poc-dm"
    create_alias    = false
    subscription_id = "a6e36c1a-2761-467f-a7b8-70cedc1993e3"
  }
  vdi_hosting = {
    name            = "vdi-hosting"
    create_alias    = false
    subscription_id = "1cd62118-56dc-452c-afd7-256f8075b6d7"
  }
  pol_sandpit_data = {
    name            = "pol-sandpit-data"
    create_alias    = false
    subscription_id = "8eb04498-f8b8-4d3c-b766-11a261ddfe87"
  }
}