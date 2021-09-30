# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  subscription_id = "6e38dc67-d07f-4e58-9057-4feb8179a634"
  tenant_id       = "f1640c14-f2cd-4607-b90a-ec03d1b46437"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"
  tags = {
    createdBy   = "Yassin Bousakka"
    project     = "trainee-terraform-project-yassin"
    neededUntil = "2021-10-31"
    team        = "Harakiri"
  }
}

resource "azurerm_resource_group" "test" {
  name     = var.testname
  location = "westus2"
  tags = {
    createdBy   = "Yassin Bousakka"
    project     = "trainee-terraform-project-yassin"
    neededUntil = "2021-10-31"
    team        = "Harakiri"
  }
}

