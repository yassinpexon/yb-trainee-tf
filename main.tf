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

