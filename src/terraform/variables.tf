variable "appid_azure" {
  type        = string
  description = "Define o ID do Service Principal"
}

variable "apppassword_azure" {
  type        = string
  description = "Define a Password do Service Principal"
}

variable "regiao" {
  type = string
  default = "eastus"
  description = "Definindo a regiao do projeto"
}