resource "azurerm_resource_group" "rgip" {
  name     = "piprg"
  location = "West Europe"
}

resource "azurerm_public_ip" "rgp" {
  name                = "acceptanceTestPublicIp2"
  resource_group_name = azurerm_resource_group.rgip.name
  location            = azurerm_resource_group.rgip.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}