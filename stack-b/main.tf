resource "random_string" "db_connection_string" {
  length  = 16
  special = false
}

resource "random_string" "db_connection_string_2" {
  length  = 16
  special = false
}