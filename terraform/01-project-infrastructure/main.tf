terraform {

  # NOTE: This terraform project has dependenencies on the 00-azure-prepare project!
  #       Make sure to apply the 00-azure-prepare project first!
  #       This project inten is to create the actual infrastructure for the project.
  #       Where the 00-azure-prepare project is there to enable the project's terraform to manage state.

  backend "azurerm" {
    resource_group_name  = "global-pplf-tf-rg-we"
    storage_account_name = "saglobaltfwe"
    container_name       = "global-tf-we-tfstate"
    key                  = "01-project-infrastructure.tfstate"

    ###############################################################
    # CONFIGURE VIA ENVIRONMENT v                           _ □ x #
    ###############################################################
    # ARM_CLIENT_ID = "00000000-0000-0000-0000-000000000000"      #
    # ARM_CLIENT_SECRET = "12345678-0000-0000-0000-000000000000"  #
    # ARM_TENANT_ID = "10000000-0000-0000-0000-000000000000"      #
    # ARM_SUBSCRIPTION_ID = "20000000-0000-0000-0000-000000000000"#
    ###############################################################
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.70.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  ###############################################################
  # CONFIGURE VIA ENVIRONMENT v                           _ □ x #
  ###############################################################
  # ARM_CLIENT_ID = "00000000-0000-0000-0000-000000000000"      #
  # ARM_CLIENT_SECRET = "12345678-0000-0000-0000-000000000000"  #
  # ARM_TENANT_ID = "10000000-0000-0000-0000-000000000000"      #
  # ARM_SUBSCRIPTION_ID = "20000000-0000-0000-0000-000000000000"#
  ###############################################################
}

# terraform azuread config contains user account
data "azuread_client_config" "current" {

}

data "azurerm_subscription" "current" {
  subscription_id = data.azurerm_client_config.current.subscription_id
}
