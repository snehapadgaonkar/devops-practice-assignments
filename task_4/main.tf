terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Pull a base image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Run a container
resource "docker_container" "nginx_container" {
  name  = "nginx_server"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = 8080
  }
}
