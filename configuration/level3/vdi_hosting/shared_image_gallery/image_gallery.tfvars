global_settings = {
  default_region = "region1"
  environment    = "test"
  regions = {
    region1 = "uksouth"
    region2 = "ukwest"
  }
}
resource_groups = {
  sig = {
    name = "keymate-image-gallery"
  }
}

shared_image_galleries = {
  keymate-gallery = {
    name               = "keymate-image-gallery"
    resource_group_key = "vdi_hosting_corp"
    description        = "keymate image gallery"
  }

}

image_definitions = {
  windows-image = {
    name               = "keymate-windows"
    gallery_key        = "keymate-gallery"
    resource_group_key = "vdi_hosting_corp"
    hyper_v_generation = "V2"
    os_type            = "Windows"
    publisher          = "MicrosoftWindowsDesktop"
    offer              = "office-365"
    sku                = "win11-21h2-avd-m365"
  }
}
