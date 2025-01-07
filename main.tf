terraform {
  required_version = ">=1.3.0"
  required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
         version = "=3.43.0"
      }

    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
 cloud { 
    
    organization = "Ira-369" 

    workspaces { 
      name = "Terraform-githubaction-storageaccount" 
    } 
  } 
  
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}


provider "random" {
  # Configuration options
}

locals {

    Environment = var.environment
    location = var.location
    
  
}

resource "random_string" "uniquestring" {
   length           = 20
  special          = false
  upper            = false
}


resource "azurerm_resource_group" "rg" {
  name =  var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "stg${random_string.uniquestring.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}