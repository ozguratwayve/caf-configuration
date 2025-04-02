azuread_groups = {
  caf_tfazure_landingzone_maintainers_sre_sbox = {
    name = "caf_tfazure_landingzone_maintainers_sre_sbox"
    members = {
      azuread_service_principal_keys = ["tfazure_sre_sbox"]
    }
    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }
  sre_sbox_subscription_contributors = {
    name = "SRE Sbox Subscription Contributors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_subscription_readers = {
    name = "SRE Sbox Subscription Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_databricks_contributors = {
    name = "SRE Sbox Databricks Contributors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_cosmos_contributors = {
    name = "SRE Sbox Cosmos Contributors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_cosmos_readers = {
    name = "SRE Sbox Cosmos Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_storage_blob_data_readers = {
    name = "SRE Sbox Storage Blob Data Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_storage_blob_data_contributors = {
    name = "SRE Sbox Storage Blob Data Contributors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_key_vault_entry_name_readers = {
    name = "SRE Sbox Key Vault Entry Name Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_key_vault_readers = {
    name = "SRE Sbox Key Vault Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_key_vault_secret_contributors = {
    name = "SRE Sbox Key Vault Secret Contributors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_log_analytics_readers = {
    name = "SRE Sbox Log Analytics Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_application_insights_readers = {
    name = "SRE Sbox Application Insights Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_app_config_data_owners = {
    name = "SRE Sbox App Configuration Data Owners"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_app_config_data_readers = {
    name = "SRE Sbox App Configuration Data Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_data_factory_contributors = {
    name = "SRE Sbox Data Factory Contributors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_aks_admins = {
    name = "SRE Sbox AKS Admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sql_readers = {
    name = "SRE Sbox SQL Readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sql_writers = {
    name = "SRE Sbox SQL Writers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sql_owners = {
    name = "SRE Sbox SQL Owners"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sql_executors = {
    name = "SRE Sbox SQL Executors"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sql_admins = {
    name = "SRE Sbox SQL Admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_reconciliation_reporting = {
    name = "SRE Sbox Reconciliation Reporting"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_historical_dataload = {
    name = "SRE Sbox Historical Dataload"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_cert_manager_admins = {
    name = "SRE Sbox AKS CERT-MANAGER admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_cert_manager_readers = {
    name = "SRE Sbox AKS CERT-MANAGER readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_cert_manager_support = {
    name = "SRE Sbox AKS CERT-MANAGER support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_external_dns_admins = {
    name = "SRE Sbox AKS EXTERNAL-DNS admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_external_dns_readers = {
    name = "SRE Sbox AKS EXTERNAL-DNS readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_external_dns_support = {
    name = "SRE Sbox AKS EXTERNAL-DNS support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_kafka_admins = {
    name = "SRE Sbox AKS KAFKA admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_kafka_readers = {
    name = "SRE Sbox AKS KAFKA readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_kafka_support = {
    name = "SRE Sbox AKS KAFKA support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_nginx_internal_admins = {
    name = "SRE Sbox AKS NGINX-INTERNAL admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_nginx_external_admins = {
    name = "SRE Sbox AKS NGINX-EXTERNAL admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_nginx_internal_readers = {
    name = "SRE Sbox AKS NGINX-INTERNAL readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_nginx_external_readers = {
    name = "SRE Sbox AKS NGINX-EXTERNAL readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_nginx_internal_support = {
    name = "SRE Sbox AKS NGINX-INTERNAL support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_nginx_external_support = {
    name = "SRE Sbox AKS NGINX-EXTERNAL support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sre_sbox_admins = {
    name = "SRE Sbox AKS SRE-SBOX admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sre_sbox_readers = {
    name = "SRE Sbox AKS SRE-SBOX readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sre_sbox_support = {
    name = "SRE Sbox AKS SRE-SBOX support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_confluent_admins = {
    name = "SRE Sbox AKS CONFLUENT admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_confluent_readers = {
    name = "SRE Sbox AKS CONFLUENT readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_confluent_support = {
    name = "SRE Sbox AKS CONFLUENT support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_techops_users = {
    name = "SRE Sbox TechOps Users"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
    ]
    prevent_duplicate_name = true
  }
  # temp - to be removed after poc
  sre_sbox_sre_sbox_calico_admins = {
    name = "Sre Sbox AKS CALICO-POC-BACKEND admins"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
      "34a9886f-b60d-4a34-9377-edbd369728b3",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sre_sbox_calico_readers = {
    name = "SRE Sbox AKS CALICO-POC-BACKEND readers"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
      "34a9886f-b60d-4a34-9377-edbd369728b3",
    ]
    prevent_duplicate_name = true
  }
  sre_sbox_sre_sbox_calico_support = {
    name = "SRE Sbox AKS CALICO-POC-BACKEND support"
    owners = [
      "f2ab61fe-d255-475a-ba24-43b7ff58e4d7",
      "34a9886f-b60d-4a34-9377-edbd369728b3",
    ]
    prevent_duplicate_name = true
  }
}
