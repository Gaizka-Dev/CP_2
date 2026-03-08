resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-terraform-dev"
  location            = azurerm_virtual_network.vnet.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdev"
  sku_tier            = "Standard"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2als_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "casopractico2"
  }

  network_profile {
    network_plugin = "azure"
  }
}
