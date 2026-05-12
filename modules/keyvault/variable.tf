variable "kvdetails" {
  type = map(object({
    kvname   = string
    location = string
    rgname   = string
  }))

}
