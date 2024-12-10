resource "spacelift_stack" "stack-a" {
  name        = "Dependencies stack A"
  repository   = "stack-dependencies-test"
  project_root = "stack-a"
  branch       = "main"
}

resource "spacelift_stack" "stack-b" {
  name        = "Dependencies stack B"
  description = "Your first stack managed by Terraform"
  repository   = "stack-dependencies-test"
  project_root = "stack-b"
  branch       = "main"
}

resource "spacelift_stack_dependency" "dependency" {
  stack_id            = spacelift_stack.stack-b.id
  depends_on_stack_id = spacelift_stack.stack-a.id
}

resource "spacelift_stack_dependency_reference" "reference" {
  stack_dependency_id = spacelift_stack_dependency.dependency.id
  output_name         = "DB_CONNECTION_STRING"
  input_name          = "TF_VAR_APP_DB_URL"
}
data "terraform_remote_state" "debugtest" {
  backend = "remote"

  config = {
    hostname     = "spacelift.io" 
    organization = "daniellem97"  

    workspaces = {
      name = "debugtest" 
    }
  }
}
