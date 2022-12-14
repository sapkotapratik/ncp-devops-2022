provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "oidc" {
  name     = var.resource_group_name
  location = var.location
}

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "pratik-demo-resource-group"
#     storage_account_name = "tfstate0029"
#     container_name       = "tfstate"
#     key                  = "dev.terraform.tfstatencp"
#   }
# }

# provider "azurerm" {
#   features {}
#   use_oidc = true
# }
# # Create a resource group
# resource "azurerm_resource_group" "example" {

#   name = "github-oidc-auth-007"

#   location = "centralindia"
# }

# # Create a virtual network within the resource group
# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   address_space       = ["10.0.0.0/16"]
# }
