azuread_applications = {
  cibc_dev_databricks_spn = {
    application_name = "cibc-dev-databricks-spn"
  }
  cibc_dev_aks_access_kv_spn = {
    application_name = "cibc-dev-aks-access-kv-spn"
  }
  cibc_dev_aks_spn = {
    application_name = "cibc-dev-aks-spn"
  }
  cibc_dev_aks_cert_manager_spn = {
    application_name = "cibc-dev-aks-cert-manager-spn"
  }
  cibc_dev_aks_external_dns_spn = {
    application_name = "cibc-dev-aks-external-dns-spn"
  }
  cibc_dev_aks_oauth2_proxy_spn = {
    useprefix        = false
    application_name = "cibc-dev-aks-oauth2-proxy-spn"
    public_client    = false

    web = {
      redirect_uris = [
        "https://kube-dashboard.cibc-dev.keymate.dev/"
      ]
    }
  }
  cibc_dev_aks_private_dns_spn = {
    application_name = "cibc-dev-aks-private-dns-spn"
  }
  cibc_dev_piper_aks_spn = {
    application_name = "cibc-dev-piper-aks-spn"
  }
  cibc_dev_piper_aks_cert_manager_spn = {
    application_name = "cibc-dev-piper-aks-cert-manager-spn"
  }
  cibc_dev_piper_aks_external_dns_spn = {
    application_name = "cibc-dev-piper-aks-external-dns-spn"
  }
  cibc_dev_piper_aks_private_dns_spn = {
    application_name = "cibc-dev-piper-aks-private-dns-spn"
  }
  cibc_dev_historical_dataload_spn = {
    application_name = "cibc-dev-historical-dataload-spn"
  }
  cibc_dev_hist_dataload_databr_spn = {
    application_name = "cibc-dev-hist-dataload-databr-spn"
  }
  cibc_dev_databr_spn = {
    application_name = "cibc-dev-databr-spn"
  }
  cibc_dev_adf_spn = {
    application_name = "cibc-dev-adf-spn"
  }
  cibc_dev_datadogmonitor_spn = {
    application_name = "cibc-dev-datadogmonitor-spn"
  }
}

