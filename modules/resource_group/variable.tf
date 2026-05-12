  # 1st way

  # variable "rgname" {
    
  #   type        = string
  # }


  # variable "location" {
  #   type = string
  # }

# 2nd way
variable "rgdetails" {
  type = map(object({
    rgname     = string
    location = string
  }))
}
