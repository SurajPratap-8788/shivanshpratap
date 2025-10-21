variable "resource_groups" {
  description = "A map of resource groups to create"
  type = map(object({
    name     = string
    location = string
  }))
}
variable "virtual_networks" {
 description = "A map of virtual network to create"
 type = map(object({
    name = string
    address_space = list(string)
    location = string
    resource_group_name = string        
 }))
}
variable "subnets" {
    description = "A map of subnets to create"
    type = map(object({
        name = string
        resource_group_name = string
        virtual_network_name = string
        address_prefixes = list(string)
    }))
}
variable "public_ips" {
    description = "A map of public ips to create"
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        allocation_method = string
        sku = string
    }))
}
variable "virtual_machines" {
    description = "A map of virtual machines to create"
    type = map(object({
        name = string 
        location = string 
        resource_group_name = string
        network_interface_ids = list(string)
        vm_size = string
        admin_username = string
        admin_password = string
        os_disk_caching = string
        os_disk_create_option = string
        os_disk_managed_disk_type = string
        os_disk_name = string
        image_publisher = string
        offer_name = string
        sku_name = string
        version = string
        computer_name = string
        disable_password_authentication = bool
        
    }))
}