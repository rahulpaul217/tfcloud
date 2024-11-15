terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=1.0.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  #   backend "azurerm" {

  #     resource_group_name = "rg_terraform_state"
  #     storage_account_name = "rpterraformstate12"
  #     container_name = "tfstate"
  #     key = "tfstate-core"

  #   }
}



