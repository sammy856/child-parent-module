variable "rg_attribute_details" {
  type = map(object({
    name     = string
    location = string
  }))
}