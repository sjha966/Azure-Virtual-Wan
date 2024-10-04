#VPN in Sweden Central
module "vpn" {
  source  = "../modules/vpn"

  client_name = "ICA"
  environment = "non-prod"
  stack       = "stack"

  location            = "Sweden Central"
  location_short      = "Sweden Central"
  resource_group_name = "rg-non-prod-vwaninfra-swe"

  logs_destinations_ids = [
    #module.logs.log_analytics_workspace_id,
  ]

  virtual_wan_id = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualWans/vwan-non-prod-infra-swc-001"
  virtual_hub_id = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-swc-001"

  vpn_gateway_instance_0_bgp_peering_address = ["169.254.21.50"]
  vpn_gateway_instance_1_bgp_peering_address = ["169.254.22.50"]

  vpn_sites = [
    {
      name = "site1"
      links = [
        {
          name       = "site1-primary-link"  # Updated to match vpn_connections
          ip_address = "194.71.19.210"
          bgp = [
            {
              asn             = 206889
              peering_address = "169.254.21.51"
            }
          ]
        },
        {
          name       = "site1-secondary-link"  # Updated to match vpn_connections
          ip_address = "194.71.19.209"
          bgp = [
            {
              asn             = 206889
              peering_address = "169.254.22.51"
            }
          ]
        }
      ]
    }
  ]

  vpn_connections = [
    {
      name      = "cn-hub-to-site1"
      site_name = "site1"
      links = [
        {
          name           = "site1-primary-link"
          bandwidth_mbps = 200
          bgp_enabled    = true
          ipsec_policy = {
            dh_group                 = "DHGroup14"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "PFS14"
            sa_data_size_kb          = 102400000
            sa_lifetime_sec          = 3600
          }
          protocol   = "IKEv2"
          shared_key = "xp#1CGkHTBQmD"
        },
        {
          name           = "site1-secondary-link"
          bandwidth_mbps = 200
          bgp_enabled    = true
          ipsec_policy = {
            dh_group                 = "DHGroup14"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "PFS14"
            sa_data_size_kb          = 102400000
            sa_lifetime_sec          = 3600
          }
          protocol                              = "IKEv2"
          shared_key                            = "xp#1CGkHTBQmD"
          policy_based_traffic_selector_enabled = false  
        }
      ]
      /* traffic_selector_policy = [
        {
          local_address_ranges  = ["10.0.0.0/8"],
          remote_address_ranges = ["10.41.216.232/29"]
        }
      ]*/
    }
  ]
  extra_tags = local.tags
}

locals {
  vpn_gateway_name = "site1"
  tags = {
    AppID           = "ah77"
    AssignmentGroup = "SN_INFOSYS-CLOUD-TECH-SUPP"
    Environment     = "Non-production"
    Role            = "Resource Group"
  }
}

#VPN in West Europe

module "vpneu" {
  source  = "../modules/vpn"

  client_name = "ICA"
  environment = "non-prod"
  stack       = "stack"

  location            = "West Europe"
  location_short      = "West Europe"
  resource_group_name = "rg-non-prod-coreinfra-euw4"

  logs_destinations_ids = [
    #module.logs.log_analytics_workspace_id,
  ]

  virtual_wan_id = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualWans/vwan-non-prod-infra-swc-001"
  virtual_hub_id = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-euw4-001"

  vpn_gateway_instance_0_bgp_peering_address = ["169.254.21.60"]
  vpn_gateway_instance_1_bgp_peering_address = ["169.254.22.60"]

  vpn_sites = [
    {
      name = "site1"
      links = [
        {
          name       = "site1-primary-link"  # Updated to match vpn_connections
          ip_address = "194.71.19.210"
          bgp = [
            {
              asn             = 206889
              peering_address = "169.254.21.61"
            }
          ]
        },
        {
          name       = "site1-secondary-link"  # Updated to match vpn_connections
          ip_address = "194.71.19.209"
          bgp = [
            {
              asn             = 206889
              peering_address = "169.254.22.61"
            }
          ]
        }
      ]
    }
  ]

  vpn_connections = [
    {
      name      = "cn-hub-to-site1"
      site_name = "site1"
      links = [
        {
          name           = "site1-primary-link"
          bandwidth_mbps = 200
          bgp_enabled    = true
          ipsec_policy = {
            dh_group                 = "DHGroup14"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "PFS14"
            sa_data_size_kb          = 102400000
            sa_lifetime_sec          = 3600
          }
          protocol   = "IKEv2"
          shared_key = "xpC#1GkHTBQmDvZ"
        },
        {
          name           = "site1-secondary-link"
          bandwidth_mbps = 200
          bgp_enabled    = true
          ipsec_policy = {
            dh_group                 = "DHGroup14"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "PFS14"
            sa_data_size_kb          = 102400000
            sa_lifetime_sec          = 3600
          }
          protocol                              = "IKEv2"
          shared_key                            = "xpC#1GkHTBQmDvZ"
          policy_based_traffic_selector_enabled = false  
        }
      ]
      /* traffic_selector_policy = [
        {
          local_address_ranges  = ["10.0.0.0/16"],
          remote_address_ranges = ["10.41.224.224/29"]
        }
      ]*/
    }
  ]
  extra_tags = local.tags
}

locals {
  #vpn_gateway_name = "site1"
  #tags = {
    #AppID           = "ah77"
    #AssignmentGroup = "SN_INFOSYS-CLOUD-TECH-SUPP"
    #Environment     = "Non-production"
    #Role            = "Resource Group"
  #}
}
