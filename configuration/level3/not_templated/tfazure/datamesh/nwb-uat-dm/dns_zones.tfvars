dns_zones = {
  dm_dz_core = {
    name               = "nwb-uat-dm.keymate.dev"
    resource_group_key = "dm_rg_networking"

    # these txt records prevent external dns from overwriting Imperva DNS records
    records = {
      txt = {
        nwb_uat_dm_a_superset = {
          name = "nwb-uat-dm-a-superset"
          records = [
            { value = "heritage=imperva/owner=imperva" },
          ]
          ttl = 300
        }
        nwb_uat_dm_superset = {
          name = "nwb-uat-dm-superset"
          records = [
            { value = "heritage=imperva/owner=imperva" },
          ]
          ttl = 300
        }
      }
    }
  }
}