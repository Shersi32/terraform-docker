


variable "image" {
  type        = map(any)
  description = "image for container"
  default = {
    nodered = {
      dev  = "nodered/node-red:latest"
      prod = "nodered/node-red:latest-minimal"
    }
    influxdb = {
      dev  = "quay.io/influxdb/influxdb:v2.0.2"
      prod = "quay.io/influxdb/influxdb:v2.0.2"
    }
  }

}



variable "ext_port" {
  type = map(any)



  # validation {
  #   condition     = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 1980
  #   error_message = "this external port must be in the valid range of 0-65535"
  # }

  # validation {
  #   condition     = max(var.ext_port["prod"]...) < 1960 && min(var.ext_port["prod"]...) >= 1880
  #   error_message = "this external port must be in the valid range of 0-65535"
  # }


}
variable "int_port" {
  type    = number
  default = 1880
}

