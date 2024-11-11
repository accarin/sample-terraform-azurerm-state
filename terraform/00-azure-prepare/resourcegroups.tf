# creates a terraform = "tf" resource group for the project

resource "azurerm_resource_group" "tf" {
  name     = "${var.prefix}-${var.project}-tf-rg-${var.suffix}"
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    project     = var.project
  }
}
