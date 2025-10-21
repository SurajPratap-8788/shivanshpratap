module "azurerm_resource_group" {
  source = "../Module/azurerm_resource_group "
    resource_groups = var.resource_groups

}
module "azurerm_virtual_network" {
    depends_on = [ module.azurerm_resource_group ]
  source = "../Module/azurerm_virtual_network "
    virtual_networks = var.virtual_networks
}
module "azurerm_subnet" {
  depends_on = [ module.azurerm_virtual_network ]
  source = "../Module/azurerm_subnet "
    subnets = var.subnets 

}
module "azurerm_public_ip" {
  depends_on = [ module.azurerm_resource_group]
  source = "../Module/azurerm_public_ip "
  public_ips = var.public_ips
}

module "azurerm_virtual_machine" {
  source = "../Module/azurerm_virtual_machine "
    virtual_machines = var.virtual_machines

}