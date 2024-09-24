resource "random_string" "example_password1" {
  length            = 15
  special           = true
  upper             = true
  lower             = true
  number            = true
}

output "random_string_value" {
  value     = random_string.example.result
}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}
