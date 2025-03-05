resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  
  tags = {
    environment = "development"
    project     = "azure-terraform-demo"
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "mojstorage12345" 
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}