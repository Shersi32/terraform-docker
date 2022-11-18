


variable "image" {
type= map
description ="image for container"
default = {
  dev = "nodered/node-red:latest"
  prod = "nodered/node-red:latest-minimal"
  }
  
}


variable "ext_port" {
  type = map
  
  
 validation {
    condition = max(var.ext_port["dev"] ...) <= 65535 && min(var.ext_port["dev"]...) >= 1980
    error_message = "this external port must be in the valid range of 0-65535"
}
  
 validation {
    condition = max(var.ext_port["prod"] ...) < 1960 && min(var.ext_port["prod"]...) >=1880
    error_message = "this external port must be in the valid range of 0-65535"
}


}
variable "int_port" {
  type    = number
  default = 1880
}

locals {
  cont_count = length(lookup(var.ext_port, terraform.workspace))
}