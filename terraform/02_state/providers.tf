terraform {
    backend "local" {
      path = "state/terraform.tfstate"
    }
    required_providers {
        local = {
        source = "hashicorp/local"
        version = "2.6.1"
        }
  }
}