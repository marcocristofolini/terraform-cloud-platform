variable "aws_region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Resource name prefix."
  type        = string
  default     = "platform-dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR."
  type        = string
  default     = "10.20.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}
