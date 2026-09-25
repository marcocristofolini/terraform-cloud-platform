output "vpc_id" {
  value       = aws_vpc.this.id
  description = "VPC identifier."
}

output "public_subnet_ids" {
  value       = values(aws_subnet.public)[*].id
  description = "Public subnet identifiers."
}
