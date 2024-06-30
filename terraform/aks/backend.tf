terraform {
  backend "azurerm" {
    resource_group_name   = "myResourceGroup"
    storage_account_name  = "terraformstorage"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
