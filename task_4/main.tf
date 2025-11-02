terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  required_version = ">= 1.0.0"
}

provider "docker" {}

# Pull image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create network (optional)
resource "docker_network" "demo_net" {
  name = "demo_network"
}

# Run container
resource "docker_container" "nginx_container" {
  name  = var.container_name
  image = docker_image.nginx.latest
  networks_advanced {
    name = docker_network.demo_net.name
  }
  ports {
    internal = 80
    external = var.host_port
  }
  restart = "unless-stopped"
}
