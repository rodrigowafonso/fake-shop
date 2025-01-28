# output "resource_group_name" {
#   value = data.azurerm_resource_group.rg_aks_devops.name
# }

# output "kubernetes_cluster_name" {
#   value = azurerm_kubernetes_cluster.cluster_aks_devops.name
# }

output "print_client_id" {
  value = var.ARM_CLIENT_ID
}

output "print_client_secret_id" {
  value = var.ARM_CLIENT_SECRET
}