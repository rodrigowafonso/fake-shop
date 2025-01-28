# Definindo o Resource Group
data "azurerm_resource_group" "rg_aks_devops" {
  name = "KUBERNETES"
}

resource "azurerm_kubernetes_cluster" "cluster_aks_devops" {
  name                = "cluster-aks-devops"
  location            = "eastus"
  resource_group_name = data.azurerm_resource_group.rg_aks_devops.name
  dns_prefix          = "cluster-aks-devops"
  kubernetes_version  = "1.30.7"

  default_node_pool {
    name            = "devopspool"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appid_azure
    client_secret = var.apppassword_azure
  }

  role_based_access_control_enabled = true

  tags = {
    Env = "Devops"
  }
}

