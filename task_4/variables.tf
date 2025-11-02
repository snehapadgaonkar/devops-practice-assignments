variable "container_name" {
  type        = string
  description = "Name for the docker container"
  default     = "nginx_server"
}

variable "host_port" {
  type        = number
  description = "Host port to map to container's port 80"
  default     = 8080
}
