resource "random_string" "db_connection_string" {
  length  = 16
  special = false
}

output "DB_CONNECTION_STRING" {
  value = "random111"
  sensitive   = true
}

output "dummy" {
  value = "dummy1"
  sensitive = true
}
