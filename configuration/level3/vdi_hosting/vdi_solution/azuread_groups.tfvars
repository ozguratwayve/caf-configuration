azuread_groups = {
  vdi_users = {
    name = "vdi_users"

    members = {
      user_principal_names = [
       "antony.lehmann_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "shavgath.perumal_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "rahavi.ramesh_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "paul.cardus_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "christopher.williamson_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "florent.valdelievre_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "joseph.beadle_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }

    owners                 = ["f2ab61fe-d255-475a-ba24-43b7ff58e4d7", "a0417727-408f-4144-9c52-c7c1e669f4c8"] ,
    prevent_duplicate_name = true
  }
  vdi_general_users = {
    name                   = "Azure virtual desktop general users"
    owners                 = ["f2ab61fe-d255-475a-ba24-43b7ff58e4d7", "a0417727-408f-4144-9c52-c7c1e669f4c8"] #william.cheung_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com, tesfa.atere_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com
    prevent_duplicate_name = true
  }
}

