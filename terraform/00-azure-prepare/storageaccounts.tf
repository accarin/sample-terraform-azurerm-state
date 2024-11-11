# storage accounts have limited naming conventions, so we need to make sure that the name is short and unique

resource "azurerm_storage_account" "tf" {
  name                     = "sa${var.prefix}${var.project_short_name}${var.suffix}"
  resource_group_name      = azurerm_resource_group.tf.name
  location                 = azurerm_resource_group.tf.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    project     = var.project
  }
}
