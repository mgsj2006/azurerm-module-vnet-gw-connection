resource "azurerm_virtual_network_gateway_connection" "connection" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.rg_name
  type                       = var.type
  virtual_network_gateway_id = var.vnet_gw_id
  express_route_circuit_id   = var.express_route_id
  tags                       = var.tags
}