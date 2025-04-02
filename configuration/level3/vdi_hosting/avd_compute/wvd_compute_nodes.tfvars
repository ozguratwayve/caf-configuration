availability_sets = {
  avset1 = {
    name               = "avset-wvd"
    region             = "region1"
    resource_group_key = "avd_compute"
    # Depends on the region, update and fault domain count availability varies.
    platform_update_domain_count = 2
    platform_fault_domain_count  = 2
    # By default availability set is configured as managed. Below can be used to change it to unmanged.
    # managed                      = false
  }
}

# Virtual machines
virtual_machines = {

  1 = {
    region             = "region1"
    resource_group_key = "avd_compute"
    provision_vm_agent = true
    # when boot_diagnostics_storage_account_key is empty string "", boot diagnostics will be put on azure managed storage
    # when boot_diagnostics_storage_account_key is a non-empty string, it needs to point to the key of a user managed storage defined in diagnostic_storage_accounts
    # if boot_diagnostics_storage_account_key is not defined, but global_settings.resource_defaults.virtual_machines.use_azmanaged_storage_for_boot_diagnostics is true, boot diagnostics will be put on azure managed storage

    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "avd_vm_kv"

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      nic0 = {
        # Value of the keys from networking.tfvars
        lz_key                  = "connectivity_virtual_networks_vdi_hosting_non_prod"
        vnet_key                = "vdi_hosting_non_privileged"
        subnet_key              = "vdi_hosting_non_privileged"
        name                    = "nic0"
        enable_ip_forwarding    = false
        internal_dns_name_label = "nic0-vm1"
      }
    }

    virtual_machine_settings = {
      windows = {
        name                 = "1"
        size                 = "Standard_D4s_v3"
        availability_set_key = "avset1"

        admin_username_key = "keymatevdi-admin"
        admin_password_key = "keymatevdi-password"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["nic0"]

        os_disk = {
          name                    = "avd_vm1-os"
          caching                 = "ReadWrite"
          storage_account_type    = "Standard_LRS"
          disk_encryption_set_key = "set1"
          os_disk_size_gb         = "128"
        }

        custom_image_key     = "windows-image"
        custom_image_lz_key  = "vdi_hosting_corp"
        custom_image_version = "0.0.1"

        identity = {
          type = "SystemAssigned"
        }
      }
    }
    ## REQUIRED EXTENSIONS FOR WVD SESSION HOSTS
    virtual_machine_extensions = {
      generic_extensions = {
        AAD = {
          publisher                  = "Microsoft.Azure.ActiveDirectory"
          name                       = "AADLoginForWindows"
          type                       = "AADLoginForWindows"
          type_handler_version       = "1.0"
          auto_upgrade_minor_version = true
          timeouts = {
            create = "1h30m"
            delete = "20m"
          }
        }
      }
      session_host_dscextension = {
        host_pool = {
          host_pool_key = "wvd_hp1"
          keyvault_key  = "vdi_solution_kv"
          secret_name   = "newwvd-hostpool-token"
          lz_key        = "vdi_solution"
        }
        base_url = "https://raw.githubusercontent.com/Azure/RDS-Templates/master/ARM-wvd-templates"
        timeouts = {
          create = "1h30m"
          delete = "20m"
        }
      }
    }
  }
  2 = {
    region             = "region1"
    resource_group_key = "avd_compute"
    provision_vm_agent = true
    # when boot_diagnostics_storage_account_key is empty string "", boot diagnostics will be put on azure managed storage
    # when boot_diagnostics_storage_account_key is a non-empty string, it needs to point to the key of a user managed storage defined in diagnostic_storage_accounts
    # if boot_diagnostics_storage_account_key is not defined, but global_settings.resource_defaults.virtual_machines.use_azmanaged_storage_for_boot_diagnostics is true, boot diagnostics will be put on azure managed storage

    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "avd_vm_kv"

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      nic2 = {
        # Value of the keys from networking.tfvars
        lz_key                  = "connectivity_virtual_networks_vdi_hosting_non_prod"
        vnet_key                = "vdi_hosting_non_privileged"
        subnet_key              = "vdi_hosting_non_privileged"
        name                    = "nic2"
        enable_ip_forwarding    = false
        internal_dns_name_label = "nic2-vm2"
      }
    }

    virtual_machine_settings = {
      windows = {
        name                 = "2"
        size                 = "Standard_D4s_v3"
        availability_set_key = "avset1"

        admin_username_key = "keymatevdi-admin"
        admin_password_key = "keymatevdi-password"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["nic2"]

        os_disk = {
          name                    = "avd_vm2-os"
          caching                 = "ReadWrite"
          storage_account_type    = "Standard_LRS"
          disk_encryption_set_key = "set1"
          os_disk_size_gb         = "128"
        }

        custom_image_key     = "windows-image"
        custom_image_lz_key  = "vdi_hosting_corp"
        custom_image_version = "0.0.1"

        identity = {
          type = "SystemAssigned"
        }
      }
    }

    ## REQUIRED EXTENSIONS FOR WVD SESSION HOSTS
    virtual_machine_extensions = {
      generic_extensions = {
        AAD = {
          publisher                  = "Microsoft.Azure.ActiveDirectory"
          name                       = "AADLoginForWindows"
          type                       = "AADLoginForWindows"
          type_handler_version       = "1.0"
          auto_upgrade_minor_version = true
          timeouts = {
            create = "1h30m"
            delete = "20m"
          }
        }
      }
      session_host_dscextension = {
        host_pool = {
          host_pool_key = "wvd_hp1"
          keyvault_key  = "vdi_solution_kv"
          secret_name   = "newwvd-hostpool-token"
          lz_key        = "vdi_solution"
        }
        base_url = "https://raw.githubusercontent.com/Azure/RDS-Templates/master/ARM-wvd-templates"
        timeouts = {
          create = "1h30m"
          delete = "20m"
        }
      }
    }
  }

}