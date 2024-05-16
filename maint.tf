provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx_container"
  ports {
    internal = 80
    external = 80
  }
}

resource "docker_image" "postgres" {
  name = "postgres:latest"
}

resource "docker_container" "postgres" {
  image = docker_image.postgres.latest
  name  = "postgres_container"
  env {
    POSTGRES_USER     = "youruser"
    POSTGRES_PASSWORD = "yourpassword"
    POSTGRES_DB       = "yourdatabase"
  }
  ports {
    internal = 5432
    external = 5432
  }
}

