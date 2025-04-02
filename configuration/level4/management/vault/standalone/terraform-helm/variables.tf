
# Map of the remote data state for lower level
variable "lower_storage_account_name" {}
variable "lower_container_name" {}
variable "lower_resource_group_name" {}

variable "tfstate_subscription_id" {
  description = "This value is propulated by the rover. subscription id hosting the remote tfstates"
}
variable "tfstate_storage_account_name" {}
variable "tfstate_container_name" {}
variable "tfstate_key" {}
variable "tfstate_resource_group_name" {}

variable "landingzone" {}

variable "rover_version" {
  default = null
}
variable "tags" {
  default = null
}

variable "keyvault_key" {}
variable "keyvault_lz_key" {}

variable "aks_lz_key" {}
variable "aks_key" {}

