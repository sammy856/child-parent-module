variable "vnetdetails" {
  type = map(object({
    vnetname      = string
    location      = string
    rgname        = string
    address_space = list(string)


    subnets = list(object({

      name           = string
      address_prefixes = list(string)

    }))

  }))
}


