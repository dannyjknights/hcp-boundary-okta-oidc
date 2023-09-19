resource "boundary_managed_group" "oidc_managed_group" {
  name           = "okta-managed-group"
  description    = "Okta Managed Group"
  auth_method_id = boundary_auth_method_oidc.provider.id
  filter         = "\"okta.com\" in \"/token/iss\""
}

resource "boundary_role" "oidc_admin_role" {
  name          = "Admin Role"
  description   = "admin role"
  principal_ids = [boundary_managed_group.oidc_managed_group.id]
  grant_strings = ["id=*;type=*;actions=*"]
  scope_id      = boundary_scope.global.id
}


resource "boundary_role" "oidc_user_role" {
  name          = "User Role"
  description   = "user role"
  principal_ids = [boundary_managed_group.oidc_managed_group.id]
  grant_strings = ["id=*;type=*;actions=*"]
  scope_id      = boundary_scope.org.id
}

