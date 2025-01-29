variable "regiao" {
  type = string
  default = "eastus"
  description = "Definindo a regiao do projeto"
}

variable "AZURE_APP_ID" {
  type = string
  description = "Variável de Ambiente do Github Secrets"
}

variable "AZURE_APP_PASSWORD" {
  type = string
  description = "Variável de Ambiente do Github Secrets"
}
