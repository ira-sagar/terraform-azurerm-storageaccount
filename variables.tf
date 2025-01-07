
variable "environment" {
  type        = string
  description = "The environment either Production or Development"
  default = "Dev"
}

variable "location" {
  type        = string
  description = "The resource location"
  default = "southcentralus"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group name"
  default = "813-8f6f9d3d-hands-on-with-terraform-on-azure"
}

/*
variable "storage_account_name" {
  type        = string
  description = "The storage account name"
}
*/
