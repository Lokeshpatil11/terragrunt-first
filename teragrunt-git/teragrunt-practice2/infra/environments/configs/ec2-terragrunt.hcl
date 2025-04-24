terraform {
  source = "/home/aumni/teragrunt-practice2/infra/modules/ec2"
}

dependency "vpc" {
    
    config_path = "configs/vpc-terragrunt.hcl"
    #skip_outputs = true

}

inputs =  {
    ami_id = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
    subnet_id = dependency.vpc.outputs.private_subnet_ids[0]
    name = "dev-ec2"
    vpc_id = dependency.vpc.outputs.vpc_id
    public_subnet_ids  = dependency.vpc.outputs.public_subnet_ids

}