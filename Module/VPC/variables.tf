variable "vpc_cidr" {
  description = "CIDR range for VPC"
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
