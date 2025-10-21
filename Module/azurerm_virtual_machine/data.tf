data "azurerm_subnet" "subnet1" {
  name                 = "subnett1"
  virtual_network_name = "vnett1"
  resource_group_name  = "rggg1"
}
data "azurerm_public_ip" "publicip1" {
  name                = "publicipp1"
  resource_group_name = "rggg1"
}