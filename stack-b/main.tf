resource "random_string" "db_connection_string" {
  length  = 16
  special = false
}

output "DB_CONNECTION_STRING" {
  value = "random11"
  sensitive   = true
}

output "DB_CONNECTION_STRING_2" {
  value = "random11"
  sensitive   = true
}