resource "spacelift_stack" "Stack-A" {
  name        = "Dependencies stack A"
  repository   = "stack-dependencies-test"
  project_root = "stack-a"
  branch       = "main"
}

resource "spacelift_stack" "Stack-A" {
  name        = "Dependencies stack B"
  description = "Your first stack managed by Terraform"
  repository   = "stack-dependencies-test"
  project_root = "stack-b"
  branch       = "main"
}
