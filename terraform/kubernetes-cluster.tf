resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "cluster2"
  location            = azurerm_resource_group.rg.location
  dns_prefix          = "k8s"
  resource_group_name = azurerm_resource_group.rg.name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
