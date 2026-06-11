variable "project_name" {
  type        = string
  description = "Nombre del proyecto"
}

variable "author" {
  type        = string
  description = "Autor o autora del proyecto"
}

variable "environment" {
  type        = string
  description = "Entorno de despliegue"
}

variable "base_dir" {
  type        = string
  description = "Directorio base donde crear el proyecto"
}