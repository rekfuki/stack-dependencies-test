resource "random_password" "example_password" {
  length            = 16
  special           = true
  upper             = true
  lower             = true
  number            = true
  id                = "none"
}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}
