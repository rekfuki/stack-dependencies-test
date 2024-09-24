resource "random_password" "example_password" {
  length            = 16
  special           = true
  upper             = true
  lower             = true
  number            = true
}
provider "opentofu" {
  # Configure the provider if necessary
}
