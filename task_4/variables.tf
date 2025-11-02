variable "container_name" {
  type        = string
  default     = "nginx_demo"
  description = "Name of the container"
}

variable "host_port" {
  type        = number
  default     = 8081
  description = "Host port to map to container port 80"
}
