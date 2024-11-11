
terraform {

  # NOTE: No backend is defined here, as this is the very basic setup to be able to further on manage state files

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
  # MANUALLY MANAGED v                                          #
  ###############################################################
  # In order for this project to work the ONLY MANUAL THING you #
  # have to do is to create an App Registration /               #
  # Service Principal for terraform.                            #
  #                                                             #
  # The Service Principal is secured by a Client Secret and     #
  # needs the RBAC role Owner for a target Subscription or      #
  # Resource Group.                                             #
  #                                                             #
  # Furthermore if you plan to manage Azure AD as well it will  #
  # need some Graph (application, NOT delegated) permissions    #
  # as well. The azuread provider will tell you in detail       # 
  # if something is missing or configured incorrectly!          #
  ###############################################################
}
