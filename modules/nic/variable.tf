variable "nicdetails" {
    type = map(object({
        nicname = string
        rgname = string
        location = string
        subnet_name = string
    }))
}