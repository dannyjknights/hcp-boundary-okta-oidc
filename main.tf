terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">=1.0.12"
    }
    okta = {
      source = "okta/okta"
      version = "~> 4.4.2"
    }
  }
}

provider "boundary" {
  addr                            = var.boundary_api_url
  auth_method_id                  = var.boundary_auth
  password_auth_method_login_name = var.login_name
  password_auth_method_password   = var.password
}

provider "okta" {
  org_name  = var.okta_org_name
  base_url  = var.okta_base_url
  api_token = var.okta_api_token
}