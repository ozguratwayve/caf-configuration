vpn_sites = {
  vpn_site_p81 = {
    name          = "vpn-site-p81"
    address_cidrs = ["10.100.8.0/22"]
    device_vendor = "Perimeter81"
    device_model  = "SaaS"

    resource_group = {
      lz_key = "connectivity_virtual_wans_prod"
      key    = "global_wan"
    }

    virtual_wan = {
      lz_key = "connectivity_virtual_wans_prod"
      key    = "global_wan"
    }

    links = {
      primary = {
        name          = "primary"
        ip_address    = "212.59.69.59"
        provider_name = "Perimeter81"
        speed_in_mbps = "500"
        bgp = {
          asn             = "65534"
          peering_address = "169.254.1.1"
        }
      }
      secondary = {
        name          = "secondary"
        fqdn          = "not.enough.p81.licenses"
        provider_name = "Perimeter81"
        speed_in_mbps = "50"
        bgp = {
          asn             = "65534"
          peering_address = "169.254.1.2"
        }
      }
    }
  }
}