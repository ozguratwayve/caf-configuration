azuread_groups = {
  purview_landingzone_owner = {
    name        = "purview-landingzone-owner"
    description = "Users with Owner access to the landingzone."
    members = {
      user_principal_names = [
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "mark.tefula_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    owners = {
      user_principal_names = [
        "carlotta.greci_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "mark.tefula_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com"
      ]
    }
    prevent_duplicate_name = true
  }
  # more groups and role assignments to be defined once architecture is ready
}