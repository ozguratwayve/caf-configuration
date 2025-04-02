azuread_groups = {
  caf_gitops_aks_cluster_admins = {
    name = "caf-gitops-aks-cluster-admins"
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "joseph.beadle_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "shavgath.perumal_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "christopher.williamson_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ],
      group_names = [
        "RBAC_Infrastructure_team"
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
  caf_gitops_aks_cluster_users = {
    name = "caf-gitops-aks-cluster-users"
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "joseph.beadle_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "shavgath.perumal_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
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
  caf_gitops_aks_cluster_dns_contributors = {
    name                   = "caf-gitops-aks-cluster-dns-contributors"
    prevent_duplicate_name = true
  }
}
