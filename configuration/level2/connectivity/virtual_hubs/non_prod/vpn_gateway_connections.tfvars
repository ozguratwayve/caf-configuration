vpn_gateway_connections = {
  connection_p81 = {
    name                      = "connection-p81"
    internet_security_enabled = false

    vpn_site = {
      key = "vpn_site_p81"
    }
    # virtual_wan = {
    #   lz_key = "connectivity_virtual_wans_prod"
    #   key    = "global_wan"
    # }
    virtual_hub = {
      key = "non_prod"
    }

    vpn_links = {
      link_p81 = {
        link_index                             = 0 # Index order of VPN Site's Link
        name                                   = "link-p81"
        bandwidth_mbps                         = "500"         # Optional
        bgp_enabled                            = true          # Optional
        protocol                               = "IKEv2"       # Optional
        ratelimit_enabled                      = true          # Optional
        route_weight                           = "100"         # Optional
        shared_key                             = "G98fd6U913g" # Optional
        local_azure_ip_address_enabled         = false         # Optional
        policy_based_traffic_selectors_enabled = false         # Optional

        ipsec_policies = { # Optional
          policy1 = {
            dh_group                 = "DHGroup14"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "PFS14"
            sa_data_size_kb          = "102400000"
            sa_lifetime_sec          = "27000"
          }
        }
      }
    }
  }
}