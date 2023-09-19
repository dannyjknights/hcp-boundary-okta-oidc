output "managed-group-id" {
  value = boundary_managed_group.oidc_managed_group.id
}

output "admin-role-id" {
  value = boundary_role.oidc_admin_role.id
}

output "user-role-id" {
  value = boundary_role.oidc_user_role.id
}