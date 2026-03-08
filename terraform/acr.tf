resource "azurerm_container_registry" "acr" {
  name                = "acrterraformdev08032026"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_virtual_network.vnet.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name = "AcrPull"
  scope                = azurerm_container_registry.acr.id
}

