variable "nginx_image" {
  default = "nginx:latest"
}

variable "nginx_container_name" {
  default = "nginx-container"
}

variable "postgres_image" {
  default = "postgres:latest"
}

variable "postgres_container_name" {
  default = "postgres-container"
}

variable "postgres_user" {
  default = "postgres"
}

variable "postgres_password" {
  default = "postgres"
}

variable "postgres_db" {
  default = "mydatabase"
}
