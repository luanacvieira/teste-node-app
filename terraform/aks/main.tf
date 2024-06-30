provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks" {
  name     = "myResourceGroup9"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "myAKSCluster2"
  location            = "East US"
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = "myClusterAksNodeApp-dns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}
