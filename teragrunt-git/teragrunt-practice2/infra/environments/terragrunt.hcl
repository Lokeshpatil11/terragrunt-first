#/enviourments/terragrunt.hcl

include "vpc-environment" {
  path = "configs/vpc-terragrunt.hcl"
  #path = "configs/ec2-terragrunt.hcl"
  # If you need to expose variables from this file, set expose = true
  # expose = true
}

include "ec2_environmet" {
   path = "configs/ec2-terragrunt.hcl"
}
/*
locals {
  vpc_config = read_terragrunt_config("${get_terragrunt_dir()}/configs/vpc-terragrunt.hcl")
  region     = local.vpc_config.inputs.region
  environment = local.vpc_config.inputs.env != null ? local.vpc_config.inputs.env : "dev"
}
*/
include "root" {
  path = find_in_parent_folders()
}
/*
remote_state {
  backend = "s3"
  config = {
    bucket         = "lokesh121213"     
    key            = "${local.environment}/vpc/terraform.tfstate"
    region         = local.region
    encrypt        = true
    dynamodb_table = "lokesh121213"        
  }
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  backend "s3" {
    bucket         = "lokesh121213"
    key            = "${local.environment}/vpc/terraform.tfstate"

    region         = "us-east-1"
    dynamodb_table = "lokesh121213"  # Optional for state locking
  }
}
EOF
}

*/