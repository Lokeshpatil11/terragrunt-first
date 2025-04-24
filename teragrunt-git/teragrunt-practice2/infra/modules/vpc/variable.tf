variable "region" {
    description = "AWS region"
    type = string
}

variable "vpc_cidr" {
  description = "CIDR block"
  type = string
}

variable "public_subnet_cidrs" {
  description = "List of pulic subnets"
  type = list(string)
}

variable "availability_zone" {
  description = "AZ's for subnets"
  type = list(string)
}

variable "env" {
    description = "Enviourment name "
    type = string
}
variable "private_subnet_cidrs" {
  description = "Private subet"
  type = list(string)
}

