# output "ip_address" {
#   value       = [for i in docker_container.nodered_container[*] : join(":", [i.ip_address], i.ports[*]["external"])]
#   description = "the ip address of container"

# }
# output "Container_Name" {
#   value       = docker_container.nodered_container[*].name
#   description = "the name of the container"
# }