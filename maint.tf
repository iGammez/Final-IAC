# Definir proveedor de recursos de Docker
provider "docker" {}

# Crear un recurso de contenedor Nginx
resource "docker_container" "nginx" {
  image = "nginx:latest"
  name  = "nginx-container"
  ports = [
    {
      container_port = 80
      host_port      = 8080
    },
  ]
}

# Crear un recurso de contenedor PostgreSQL
resource "docker_container" "postgres" {
  image = "postgres:latest"
  name  = "postgres-container"
  environment = {
    POSTGRES_USER = "postgres"
    POSTGRES_PASSWORD = "postgres"
    POSTGRES_DB = "mydatabase"
  }
  ports = [
    {
      container_port = 5432
      host_port      = 5433
    },
  ]
}
