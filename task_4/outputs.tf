output "container_name" {
  description = "Name of the created container"
  value       = docker_container.nginx_container.name
}

output "host_port" {
  description = "Host port forwarded to container"
  value       = var.host_port
}

output "container_ip" {
  description = "Container internal IP address"
  value       = docker_container.nginx_container.ip_address
  # may be empty depending on docker provider/version; use `docker inspect` if needed
}
