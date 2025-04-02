azuread_groups = {
  caf_non_prod_shared_services_aks_cluster_admins = {
    name = "caf-non-prod-shared-services-aks-cluster-admins"
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "joseph.beadle_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "christopher.williamson_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    owners = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "antony.lehmann_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  caf_non_prod_shared_services_aks_cluster_users = {
    name = "caf-non-prod-shared-services-aks-cluster-users"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  caf_non_prod_shared_services_aks_cluster_dns_contributors = {
    name = "caf-non-prod-shared-services-aks-cluster-dns-contributors"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true

  }
}