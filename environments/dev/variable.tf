variable "rg_details" {
  type = map(object({
    rgname   = string
    location = string
  }))
}

variable "vnet_details" {
  type = map(object({
    vnetname      = string
    location      = string
    rgname        = string
    address_space = list(string)

    subnets = list(object({

      name             = string
      address_prefixes = list(string)

    }))

  }))
}


variable "nic_details" {
  type = map(object({
    nicname     = string
    rgname      = string
    location    = string
    subnet_name = string
  }))
}


variable "lvm_details" {
  type = map(object({
    vmname         = string
    rgname         = string
    location       = string
    vmsize         = string
    admin_username = string
    admin_password = string

  }))
}


variable "kv_details" {
  type = map(object({
    kvname   = string
    location = string
    rgname   = string
  }))

}
