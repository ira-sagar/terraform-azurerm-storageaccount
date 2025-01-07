terraform {
  required_version = ">=1.3.0"
  required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
         version = ">=3.43.0"
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

locals {

    Environment = var.environment
    location = var.location
    
  
}


resource "azurerm_resource_group" "rg" {
  name =  var.resource_group_name
  location = var.location
}