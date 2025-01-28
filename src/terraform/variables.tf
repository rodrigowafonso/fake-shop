variable "regiao" {
  type = string
  default = "eastus"
  description = "Definindo a regiao do projeto"
}

variable "ARM_CLIENT_ID" {
  type = string
  description = "Variável de Ambiente do Github Secrets"
}

variable "ARM_CLIENT_SECRET" {
  type = string
  description = "Variável de Ambiente do Github Secrets"
}
