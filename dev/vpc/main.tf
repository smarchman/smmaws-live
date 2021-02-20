module "smmaws_vpc_dev" {
  source = "git::git@github.com:smarchman/smmaws-modules.git//networking/vpc?ref=v0.0.4"
  # VPC Info
  vpc_cidr                 = "10.100.0.0/16"
  vpc_enable_dns_hostnames = "true"
  vpc_enable_dns_support   = "true"
  vpc_name                 = "smmaws-vpc-dev"
  vpc_owner                = "smarchman"
  vpc_tenancy              = "default"
  vpc_terraformed          = "yes"
  vpc_terragrunt           = "true"
  vpc_environment          = "development"
  # Public Subnet Info
  subnet_public_1_az          = "us-east-1a"
  subnet_public_1_cidr        = "10.100.100.0/22"
  subnet_public_1_name        = "smmaws-public-subnet-1-dev"
  subnet_public_1_owner       = "smarchman"
  subnet_public_1_terraformed = "true"
  subnet_public_2_az          = "us-east-1b"
  subnet_public_2_cidr        = "10.100.108.0/22"
  subnet_public_2_name        = "smmaws-public-subnet-2-dev"
  subnet_public_2_owner       = "smarchman"
  subnet_public_2_terraformed = "true"
  #Private Subnet Info
  subnet_private_1_az          = "us-east-1a"
  subnet_private_1_cidr        = "10.100.120.0/22"
  subnet_private_1_name        = "smmaws-private-subnet-1-dev"
  subnet_private_1_owner       = "smarchman"
  subnet_private_1_terraformed = "true"
  subnet_private_2_az          = "us-east-1b"
  subnet_private_2_cidr        = "10.100.128.0/22"
  subnet_private_2_name        = "smmaws-private-subnet-2-dev"
  subnet_private_2_owner       = "smarchman"
  subnet_private_2_terraformed = "true"
  # Internet Gateway Info
  igw_name       = "smmaws_igw_dev"
  rt_public_name = "smmaws_rt_public_dev"

}

data "aws_vpc" "smmaws_vpc_data" {
  filter {
    name   = "tag:Name"
    values = ["smmaws-vpc-dev"]
  }
  depends_on = [module.smmaws_vpc_dev]
}

output "testoutput" {

  value = data.aws_vpc.smmaws_vpc_data
}