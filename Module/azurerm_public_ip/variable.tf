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