resource "azurerm_virtual_network" "vnet_kubernetes" {
  name                = "VNET_KUBERNETES"
  location            = var.regiao
  resource_group_name = data.azurerm_resource_group.rg_aks_devops.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = {
    Env = "Devops"
  }
}

resource "azurerm_subnet" "subnet_kubernetes" {
  name                 = "SUB-KUBERNETES"
  resource_group_name  = data.azurerm_resource_group.rg_aks_devops.name
  virtual_network_name = azurerm_virtual_network.vnet_kubernetes.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "subnet_sg_plug" {
  subnet_id                 = azurerm_subnet.subnet_kubernetes.id
  network_security_group_id = azurerm_network_security_group.sg_rwa_devops.id
}