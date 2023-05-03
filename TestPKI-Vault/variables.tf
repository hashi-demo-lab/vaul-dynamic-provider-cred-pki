variable "common_name" {
  type        = string
  description = "certificate common name"
  default     = "dev.f5demo.com"
}
variable "vault_fqdn" {
  description = "vault fqdn"
  type        = string
  default     = ""
  sensitive   = true
}