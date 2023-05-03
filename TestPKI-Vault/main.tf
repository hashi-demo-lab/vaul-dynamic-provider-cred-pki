terraform {
  cloud {
    organization = "hashi-demos-apj"

    workspaces {
      name = "my-vault-workspace"
    }
  }
}

/* resource "vault_pki_secret_backend_cert" "this" {
  backend = "pki_intermediate"
  name    = "f5demo" # role name

  common_name           = var.common_name
  min_seconds_remaining = "1209600" # 14 days - example only
  auto_renew            = true

  lifecycle {
    postcondition {
      condition     = !self.renew_pending
      error_message = "${var.common_name} - min remaining time reached. F5 Vault cert should be renewed."
    }
  }
} */