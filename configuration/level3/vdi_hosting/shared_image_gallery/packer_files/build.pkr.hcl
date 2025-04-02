packer {
  required_plugins {
    windows-update = {
      version = "0.14.0"
      source = "github.com/rgl/windows-update"
    }
  }
}

source "azure-arm" "mybuild" {
  build_resource_group_name                        = var.build_resource_group_name
  client_id                                        = var.client_id
  client_secret                                    = var.client_secret
  os_type                                          = "Windows"
  image_publisher                                  = "MicrosoftWindowsDesktop"
  image_offer                                      = "office-365"
  image_sku                                        = "win11-21h2-avd-m365"
  managed_image_name                               = var.managed_image_name
  managed_image_resource_group_name                = var.managed_image_resource_group_name
  managed_image_storage_account_type               = var.managed_image_storage_account_type
  private_virtual_network_with_public_ip           = var.private_virtual_network_with_public_ip
  subscription_id                                  = var.subscription_id
  tenant_id                                        = var.tenant_id
  user_assigned_managed_identities                 = var.managed_identity
  virtual_network_name                             = var.virtual_network_name
  virtual_network_subnet_name                      = var.virtual_network_subnet_name
  vm_size                                          = var.vm_size
  azure_tags                                       = local.azure_tags
  shared_gallery_image_version_exclude_from_latest = var.shared_gallery_image_version_exclude_from_latest
  shared_image_gallery_destination {
    gallery_name         = var.gallery_name
    image_name           = var.image_name
    image_version        = var.image_version
    replication_regions  = [var.replication_regions]
    resource_group       = var.resource_group 
    subscription         = var.subscription
    storage_account_type = var.storage_account_type
  }
  communicator = "winrm"
  winrm_use_ssl = true
  winrm_insecure= true
  winrm_timeout= "20m"
  winrm_username= "packer"
  #async_resourcegroup_delete": "true",
}

build {
  sources = ["source.azure-arm.mybuild"]

  provisioner "windows-update" {
    search_criteria = "IsInstalled=0"
  }
  provisioner "powershell" {
    script = "${var.packer_working_dir}/packer_files/finalize.ps1"
  }

 # provisioner "ansible" {
  #  playbook_file = "${var.packer_working_dir}/packer_files/ansible-install.yml"
  #}
 # provisioner "powershell" {
 #   script = "${var.packer_working_dir}/packer_files/packages.ps1"
 # }

}

locals {
  azure_tags = try(convert(var.azure_tags, map(string)), null)
}

variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "managed_image_name" {}
variable "managed_image_resource_group_name" {}
variable "managed_image_storage_account_type" {}
variable "os_type" {}
variable "packer_working_dir" {
  default = "."
}
variable "build_script" {
  default = null
}
variable "azure_tags" {
  default = null
}
variable "location" {}
variable "build_resource_group_name" {
  default = null
}
variable "image_offer" {
  default = null
}
variable "image_publisher" {
  default = null
}
variable "image_sku" {
  default = null
}
variable "ansible_playbook_path" {
  default = null
}
variable "private_virtual_network_with_public_ip" {
  default = null
}
variable "managed_identity" {
  default = null
}
variable "virtual_network_name" {
  default = null
}
variable "virtual_network_subnet_name" {
  default = null
}
variable "vm_size" {}
#destination sig
variable "gallery_name" {}
variable "image_name" {}
variable "image_version" {
  default = "1.0.0"
}
variable "replication_regions" {}
variable "resource_group" {}
variable "subscription" {}
variable "storage_account_type" {}
variable "shared_gallery_image_version_exclude_from_latest" {
  default = null
}
#source sig
variable "source_subscription" {
  default = null
}
variable "source_resource_group" {
  default = null
}
variable "source_gallery_name" {
  default = null
}
variable "source_image_version" {
  default = "0.0.2"
}