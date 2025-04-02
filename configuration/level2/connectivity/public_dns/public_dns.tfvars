# Public DNS Zones
dns_zones = {
  keymatehosting_com = {
    name               = "keymatehosting.com"
    resource_group_key = "public_dns_re1"

    records = {
      txt = {
        azuread_domain_verification = {
          name = "@"
          records = [
            { value = "MS=ms40434535" },
          ]
          ttl = 3600
        }
      }
      ns = {
        cibc_dev = {
          name = "cibc-dev" # public dns zone defined under level3/not_templated/tfazure/cibc-dev
          records = [
          ]
        }
      }
    }
  }
}