module "smmaws-ec2-dev" {

  source = "git::git@github.com:smarchman/smmaws-modules.git//ec2?ref=v0.0.5"
  ami = "ami-047a51fa27710816e"
  aws_account_id = "522017749998"
  aws_region = "us-east-1"
  instance_type = "t2.micro"
  keypair_name = "lsq-laptop-key"
  name = "smmaws-dev-ec2"
  subnet_id = "subnet-05f5f277a4c709bb6"
  terraform_state_aws_region = "us-east-1"
  terraform_state_s3_bucket = "smmaws-dev-terraform-state"
  vpc_name = "	smmaws-vpc-dev"

  attach_eip = true
  tags = {
    environment = "development"
    terraform = "true"
    terragrunt = "true"
    owner = "smarchman"

  }
}