resource "random_password" "example_password1" {
  length            = 15
  special           = true
  upper             = true
  lower             = true
  number            = true
}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}
