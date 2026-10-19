terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
}


# Mengunduh image Nginx dari Docker Hub
resource "docker_image" "nginx_web" {
  name         = "nginx:latest"
  keep_locally = false
}

# Membuat dan menjalankan container server
resource "docker_container" "nginx_server" {
  image = docker_image.nginx_web.image_id
  name  = "portfolio-web-server"
  ports {
    internal = 80
    external = 8080
  }
}