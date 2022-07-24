terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.region  
}

module "VPC" {
  source   = "./Module/VPC"
  vpc_cidr = var.vpc_cidr
}

module "EC2" {
  source         = "./Module/EC2"
  ec2_key        = var.ec2_key
  region         = var.region
  company        = var.company
  subnet         = module.VPC.queue_subnet
  security_group = module.VPC.queue_sg
  vpc_id         = module.VPC.vpc_id
  queue_address  = var.queue_address

  depends_on = [module.VPC]
}

module "IAM_Master" {
  source = "./Module/IAM/Master"

  valohai_assume_user  = var.valohai_assume_user

  depends_on = [module.IAM_Workers]
}

module "IAM_Workers" {
  source = "./Module/IAM/Workers"
}

module "Worker-Queue" {
  source = "./Module/IAM/Worker-Queue"
}

module "IAM_S3" {
  source = "./Module/IAM/S3"
}


module "S3" {
  source = "./Module/S3"

  depends_on = [module.IAM_S3]
}

