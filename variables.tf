variable "aws_profile" {
  description = "AWS Profile name (~/.aws/credentials)"
  type        = string
}

variable "region" {
  description = "AWS region for Valohai resources"
  type        = string
}

variable "company" {
  description = "Company name, used for Valohai resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR range for VPC"
  default     = "10.0.0.0/16"
  type        = string
}

variable "vpc_ipam" {
  description = "Use IPAM for determining VPC cidr range dynamically"
  default     = false
  type        = bool
}

variable "vpc_ipam_pool_id" {
  description = "IPAM pool ID if vpc_ipam is used"
  type        = string
}

variable "ec2_key" {
  description = "Location of the ssh key pub file that can be used for Valohai managed instances"
  type        = string
}

variable "queue_address" {
    type = string
    description = "The address of the Valohai queue. You can get this from your Valohai contact"
}

variable "valohai_assume_user" {
    type = string
    description = "ARN of the user Valohai will use to assume the ValohaiMaster role in your account."
}