resource "azurerm_network_interface" "nic" {
    name                = "nicc1"
    location            = "eastus"
    resource_group_name = "rggg1"
    ip_configuration {
        name                          = "internal"
        subnet_id                     = data.azurerm_subnet.subnet1.id
        public_ip_address_id = data.azurerm_public_ip.publicip1.id
        private_ip_address_allocation = "Dynamic"
    }
}
resource "azurerm_virtual_machine" "vm" {
    for_each = var.virtual_machines
    name                  = each.value.name
    location              = each.value.location
    resource_group_name   = each.value.resource_group_name
    network_interface_ids = each.value.network_interface_ids
    vm_size               = each.value.vm_size  
    storage_os_disk {
        name              = each.value.os_disk_name
        caching           = each.value.os_disk_caching
        create_option     = each.value.os_disk_create_option
        managed_disk_type = each.value.os_disk_managed_disk_type
    }

     storage_image_reference {
        publisher = each.value.image_publisher
        offer = each.value.offer_name
        sku = each.value.sku_name
        version = each.value.version
     }
     os_profile {
        computer_name = each.value.computer_name
        admin_username = each.value.admin_username
        admin_password = each.value.admin_password
     }
        os_profile_linux_config {
            disable_password_authentication = each.value.disable_password_authentication
           

}
}