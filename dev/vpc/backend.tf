# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    encrypt        = true
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "smmaws-dev-terraform-state"
    dynamodb_table = "smmaws-dev-terraform-locks"
  }
}
