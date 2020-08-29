variable "public_subnet_cidr_blocks" {
  type = list
  default = [
    var.public_cidr1,
    var.public_cidr2,
    var.public_cidr3,
  ]
}

variable "private_subnet_cidr_blocks" {
  type = string
  default = [
    var.private_cidr1,
    var.private_cidr2,
    var.private_cidr3,
  ]
}

variable "availability_zones" {
  type = list
  default = [
    "${var.region}${var.az1}",
    "${var.region}${var.az2}",
    "${var.region}${var.az3}",
  ]
}

variable "environment" {
  type    = string
  default = var.environment
}

variable "vpc_cidr_block" {
  type    = string
  default = var.cidr_block
}

module "vpc" {
  source = "modules/vpc"

  availability_zones        = var.availability_zones
  environment               = var.environment
  vpc_cidr_block            = var.vpc_cidr_block
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
}

output "vpc_id" {
  value = module.vpc.id
}
