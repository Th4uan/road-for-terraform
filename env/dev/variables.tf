variable "instance_name" {
  type = string
  description = "Nome da máquina a ser instanciada"
}

variable "instance_type" {
  type = string
  description = "Tipo da máquina a ser instanciada"
}

variable "gcp_project_id" {
  description = "O ID do projeto no Google Cloud."
  type        = string
}

variable "region" {
  type = string
  description = "Região onde a instância será criada"
}

variable "zone" {
  type = string
  description = "Zona onde a instância será criada"
}

variable "developers" {
  description = "Lista de e-mails dos desenvolvedores que terão acesso à instância"
  type        = list(string)
}