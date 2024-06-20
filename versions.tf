terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.8.9"
    }

    random = {
        source = "hashicorp/random"
        version = "3.4.3"
    }
  }

  backend "azurerm" {
    key              = "terraform.state"
    use_oidc         = true
    use_azuread_auth = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
