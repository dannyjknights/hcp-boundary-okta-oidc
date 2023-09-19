terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">=1.0.12"
    }
  }
}

provider "boundary" {
  addr                            = var.boundary_api_url
  auth_method_id                  = var.boundary_auth
  password_auth_method_login_name = var.login_name
  password_auth_method_password   = var.password
}
