output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "subnet_ids" {
  value = concat(aws_subnet.private[*].id, aws_subnet.public[*].id)
}
output "subnet_id" {
  value = aws_subnet.private
}