azuread_groups = {
  caf_non_prod_vdi_hosting_admins = {
    name = "caf-non-prod-vdi-hosting-admins"
    members = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "joseph.beadle_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "christopher.williamson_keymate.co.uk#EXT#keymatedev.onmicrosoft.com"
      ]
    }
    owners = {
      user_principal_names = [
        "william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
}