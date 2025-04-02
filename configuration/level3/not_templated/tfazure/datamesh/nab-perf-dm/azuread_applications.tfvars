azuread_applications = {
  # TODO: Unavailable in CAF 5.6.4
  # dm_aada_databricks_ad_sync = {
  #   useprefix               = true
  #   application_name        = "perf-dm-databricks-ad-sync"
  #   prevent_duplicate_names = true
  #   group_membership_claims = "All"
  # }
  dm_aada_superset_aad_sync = {
    useprefix               = true
    application_name        = "perf-dm-superset-aad-sync"
    prevent_duplicate_names = true
    reply_urls              = ["https://superset.nab-perf-dm.keymate.dev/oauth-authorized/azure"]
    group_membership_claims = "ApplicationGroup"
  }
}