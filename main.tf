resource "spacelift_stack" "stack-1" {
  name        = "Dependencies stack 1"
  repository   = "stack-dependencies-test"
  project_root = "stack-a"
  branch       = "main"
}

resource "spacelift_stack" "stack-2" {
  name        = "Dependencies stack 2"
  description = "Your first stack managed by Terraform"
  repository   = "stack-dependencies-test"
  project_root = "stack-b"
  branch       = "main"
}

resource "spacelift_stack" "stack-3" {
  name        = "Dependencies stack 3"
  description = "Your first stack managed by Terraform"
  repository   = "stack-dependencies-test"
  project_root = "stack-c"
  branch       = "main"
}

resource "spacelift_stack_dependency" "dependency" {
  stack_id            = spacelift_stack.stack-2.id
  depends_on_stack_id = spacelift_stack.stack-1.id
}

resource "spacelift_stack_dependency_reference" "reference" {
  stack_dependency_id = spacelift_stack_dependency.dependency.id
  output_name         = "DB_CONNECTION_STRING"
  input_name          = "TF_VAR_APP_DB_URL"
}
