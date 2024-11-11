# besides the storage account, we also need a container = "folder" to store state files

resource "azurerm_storage_container" "tf" {
  name                  = "${var.prefix}-${var.project_short_name}-${var.suffix}-tfstate"
  storage_account_name  = azurerm_storage_account.tf.name
  container_access_type = "private"
}
