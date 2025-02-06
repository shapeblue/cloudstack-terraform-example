terraform {
  required_providers {
    cloudstack = {
      source  = "cloudstack/cloudstack"
      version = "0.5.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }
}
provider "cloudstack" {
  # Configuration options
  api_url    = var.api_url
  api_key    = var.api_key
  secret_key = var.secret_key
}

variable "api_url" {
  description = "API URL"
  type        = string
  default     = "<YOUR-CLOUDSTACK-ADDRESS_AND_PORT>/client/api"
}

variable "api_key" {
  description = "API key"
  type        = string
  default     = "<YOUR-CLOUDSTACK-API-KEY>"
}

variable "secret_key" {
  description = "Secret key"
  type        = string
  default     = "<YOUR-CLOUDSTACK-SECRET-KEY>"
}
