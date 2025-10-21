variable "virtual_networks" {
 description = "A map of virtual network to create"
 type = map(object({
    name = string
    address_space = list(string)
    location = string
    resource_group_name = string        
 }))
}