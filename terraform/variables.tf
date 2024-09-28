variable "resource_group_name" {
  default = "deakinuni"
}

variable "location" {
  default = "East US"
}

variable "node_count" {
  default = 1
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default     = "f934c0c9-3dd6-4e4c-9c72-a9bc36463aa6"
}

variable "client_id" {
  description = "The client ID (application ID) from Azure AD"
  type        = string
  default     = "808ea4d9-c466-49e8-9738-53412ed2f281"
}

variable "client_secret" {
  description = "The client secret from Azure AD"
  type        = string
  sensitive   = true
  default     = "9wk8Q~2TfQkr51y4vAf~X_V0zjwtRSPf9Hhu8afs"
}

variable "tenant_id" {
  description = "The tenant ID from Azure AD"
  type        = string
  default     = "2625129d-99a2-4df5-988e-5c5d07e7d0fb"
}