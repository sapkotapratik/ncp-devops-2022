terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "pratik-demo-resource-group"
#     storage_account_name = "tfstate0029"
#     container_name       = "tfstate"
#     key                  = "dev.terraform.tfstatencp"
#   }
# }

provider "azurerm" {
  features {
    ARM_CLIENT_ID= ${{ secrets.AZURE_AD_CLIENT_ID }}
    ARM_CLIENT_SECRET=  ${{ steps.myGetSecretAction.outputs.ga-secret }}
    ARM_SUBSCRIPTION_ID= ${{ secrets.AZURE_SUBSCRIPTION_ID }}
    ARM_TENANT_ID= ${{ secrets.AZURE_AD_TENANT_ID }}

  }
}
# Create a resource group
resource "azurerm_resource_group" "example" {

  name = "github-certificate-link"

  location = "centralindia"
}

# # Create a virtual network within the resource group
# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   address_space       = ["10.0.0.0/16"]
# }
