terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.15.0"
    }
  }
}

provider "vault" {
  # Configuration options
  address = var.vault_fqdn
}
