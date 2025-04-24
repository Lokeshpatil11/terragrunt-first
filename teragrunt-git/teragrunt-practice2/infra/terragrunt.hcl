
locals {
    region = "us-east-1"
}

remote_state {
    backend = "s3"
    config = {
        bucket = "lokesh-121213"
        key = "${path_relative_to_include()}/terraform.tfstate"
        region = local.region
        dynamodb_table = "lokesh-121213"
        encrypt = true
    }
}
/*
generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
    backend "s3" {}
}
EOF
}
*/

/*
generate "provider" {
    path = "provider.tf"
     if_exists = "overwrite_terragrunt" 
    contents = <<EOF
provider "aws" {
    region = "${local.region}"

    }
    EOF
}

*/