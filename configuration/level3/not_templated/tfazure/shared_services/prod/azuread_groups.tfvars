azuread_groups = {

  caf_tfazure_landingzone_maintainers_prod = {
    name = "caf_tfazure_landingzone_maintainers_prod"

    members = {
      azuread_service_principal_keys = ["tfazure_prod_gitops"]
    }

    owners                 = ["34a9886f-b60d-4a34-9377-edbd369728b3"] # Antony Lehmann
    prevent_duplicate_name = true
  }

  caf_tfazure_integration_spns = {
    name        = "caf-tfazure-integration-spns"
    description = "caf-tfazure integration service principals with Get/List permissions on tfazureshrsvcprod keyvault."
    members = {
      azuread_service_principal_keys = [
        "tfazure_pol_prod_dm"
      ]
    }
    owners = {
      user_principal_names = [
        "antony.lehmann_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
        "kennedy.ikwuemesi_keymate.co.uk#EXT#@keymatedev.onmicrosoft.com",
      ]
    }
    prevent_duplicate_name = true
  }
}