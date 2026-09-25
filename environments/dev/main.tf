terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0, < 7.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = "dev"
      Repository  = "terraform-cloud-platform"
    }
  }
}

module "network" {
  source = "../../modules/network"

  name               = var.name
  cidr_block         = var.vpc_cidr
  availability_zones = var.availability_zones
}
