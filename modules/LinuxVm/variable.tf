variable "lvmdetails" {
  type = map(object({
    vmname         = string
    rgname         = string
    location       = string
    vmsize         = string
    admin_username = string
    admin_password = string

  }))
}
