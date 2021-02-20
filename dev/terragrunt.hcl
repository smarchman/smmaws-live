# dev/terragrunt.hcl

remote_state {
  backend = "s3"
  generate = {
    path = "backend.tf"
    # This is pretty cool -- I get it.  It creates a backend.tf file in the directory and actually makes
    # Terraform work like Terraform (in this case, setting the S3 bucket location).  Excited to see this in action.
    if_exists = "overwrite_terragrunt"
  }
  config {
    bucket = smmaws-dev-terraform-state
    # Below sets the key path between the root terragrunt.hcl file and the child module
    key = "{path_relative_to_include()}/terraform.tfstate"
    region = "us-east-1"
    encrypt = "true"
    dynamodb_table = "smmaws-dev-terrraform-locks"
  }
}