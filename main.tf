#hcp vault configuraiton - pki and kv and aws auth
module "hcp-vault-config" {
  source = "./modules/vault_config/"

  vault_fqdn  = var.vault_fqdn
  vault_token = var.vault_token
}
