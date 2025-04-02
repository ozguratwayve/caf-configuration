packer_build = {
  build = {
    packer_working_dir                               = "/#{SystemDefaultWorkingDirectory}#/configuration/level3/vdi_hosting/shared_image_gallery"
    packer_template_file                             = "/packer_files/build.pkr.hcl"
    packer_var_file                                  = "/#{SystemDefaultWorkingDirectory}#/configuration/level3/vdi_hosting/shared_image_gallery/packer_files/packer.json"
    secret_prefix                                    = "packer-client"
    keyvault_key                                     = "packer_client"
    managed_image_name                               = "keymate_vdi"
    resource_group_key                               = "vdi_hosting_corp" #for managed_image_resource_group_name
    os_type                                          = "Windows"
    image_publisher                                  = "MicrosoftWindowsDesktop"
    image_offer                                      = "office-365"
    image_sku                                        = "win11-21h2-avd-m365"
    location                                         = "uksouth"
    image_version                                    = "0.0.1"
    vm_size                                          = "Standard_D4d_v5"
    managed_image_storage_account_type               = "Standard_LRS" #storage type used during build. Premium_LRS for faster builds, note chosen vm_size needs to support the storage type
    storage_account_type                             = "Standard_LRS" #storage type in shared image gallery
    keep_image                                       = true #source Azure managed image can be deleted once imported into shared image gallery
    shared_gallery_image_version_exclude_from_latest = true
    #source_image_version                             = "0.0.2"
    keep_versions                                    = 5 # number of image versions to keep
    ansible_playbook_path    = "/#{SystemDefaultWorkingDirectory}#/configuration/level3/vdi_hosting/shared_image_gallery/packer_files/ansible-ping.yml"
    shared_image_gallery_destination                 = {
      gallery_key         = "keymate-gallery"
      image_key           = "windows-image"
      resource_group_key  = "identity_level2_vdi_hosting_non_prod"
      replication_regions = "uksouth"
      image_version       = "1.0.0"
    }
  }
}

