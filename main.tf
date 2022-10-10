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
    client_id= ${{ secrets.AZURE_AD_CLIENT_ID }}
    client_secret=  ${{ steps.myGetSecretAction.outputs.ga-secret }}
    subscription_id= ${{ secrets.AZURE_SUBSCRIPTION_ID }}
    tenant_id= ${{ secrets.AZURE_AD_TENANT_ID }}

  }
}
# Create a resource group
resource "azurerm_resource_group" "example" {

  name = "github-certificate-link-007"

  location = "centralindia"
}

# # Create a virtual network within the resource group
# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   address_space       = ["10.0.0.0/16"]
# }
