
resource "azurerm_network_security_group" "sg_rwa_devops" {
  name                = "sg_rwa_devops"
  location            = var.regiao
  resource_group_name = data.azurerm_resource_group.rg_aks_devops.name

  security_rule {
    name                       = "rwa-rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    Env = "Devops"
  }
}