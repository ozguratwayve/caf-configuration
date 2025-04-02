azuread_groups = {
  caf_shared_services_aks_cluster_admins = {
    name = "caf-shared-services-aks-cluster-admins"
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "joseph.beadle_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "bryan.oakley-wiggins_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
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
  caf_shared_services_aks_cluster_users = {
    name = "caf-shared-services-aks-cluster-users"
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
  caf_shared_services_aks_cluster_dns_contributors = {
    name = "caf-shared-services-aks-cluster-dns-contributors"
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
  caf_shared_services_maintainers = {
    name = "caf-shared-services-maintainers"
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "bryan.oakley-wiggins_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    owners = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "bryan.oakley-wiggins_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  caf_shared_services_argocd_admins = {
    name = "caf-shared-services-argocd-admins"
    members = {
      user_principal_names = []
    }
    owners = {
      user_principal_names = [
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "karen.basra_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
}