data "azurerm_storage_account" "storage_tfstate" {
  name = "storagedevopsrwa"
  resource_group_name = data.azurerm_resource_group.rg_aks_devops.name
}

# resource "azurerm_storage_account" "storage_tfstate" {
#   name = "storagedevopsrwa"
#   resource_group_name      = data.azurerm_resource_group.rg_aks_devops.name
#   location                 = var.regiao
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     Env = "Devops"
#   }
# }

# resource "azurerm_storage_container" "rwa_container" {
#     name = "tfstate"
#     storage_account_id = azurerm_storage_account.storage_tfstate.id
#     container_access_type = "private"
  
# }