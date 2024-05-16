terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

resource "docker_image" "db" {
  name = "postgres:15.2-alpine"
}

resource "docker_container" "db" {
  name  = "db_container"
  image = docker_image.db.name
  env = [
    "POSTGRES_USER=juan",
    "POSTGRES_PASSWORD=porshe16",
    "POSTGRES_DB=mydb"
  ]
}

resource "docker_image" "web" {
  name         = "nginx_ansible"
  build {
    context = "docker/web"
  }
}

resource "docker_container" "web" {
  name  = "web_container"
  image = docker_image.web.name
  ports {
    internal = 80
    external = 8080
  }
  volumes {
    container_path = "/root"
    host_path      = "${abspath(path.module)}/playbooks"
    read_only      = false
  }
}