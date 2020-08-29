output "id" {
  description = "The id of the provisioned VPC"
}

output "public_subnets" {
  description = "A list of the public subnets under the provisioned VPC"
  value       = aws_subnet.public_subnets.*.id
}

output "private_subnets" {
  description = "A list of private subnets under the provisioned VPC"
  value       = aws_subnet.private_subnets.*.id
}
