# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "smmaws-dev-terraform-state"
    dynamodb_table = "smmaws-dev-terraform-locks"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-1"
  }
}
