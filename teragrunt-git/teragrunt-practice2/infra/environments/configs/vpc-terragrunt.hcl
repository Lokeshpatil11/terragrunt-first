#/home/aumni/teragrunt-practice2/infra/environments/configs/vpc-terragrunt.hcl
locals{
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "my-name"
}

terraform {
  source = "/home/aumni/teragrunt-practice2/infra/modules/vpc"
}

inputs = {
  vpc_cidr             = local.vpc_cidr
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zone    = ["us-east-1a", "us-east-1b"]
  region               = "us-east-1"
  env                  = "dev"
}
/*
remote_state {
  backend = "s3"
  config = {
    bucket         = "lokesh-121213"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "LockID"
  }
}
*/