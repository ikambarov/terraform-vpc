variable "environment" {
  type    = string
}

variable "vpc_cidr_block" {
  type    = string
}

variable "public_cidr1" {
  type    = string
}

variable "public_cidr2" {
  type    = string
}
variable "public_cidr3" {
  type    = string
}

variable "private_cidr1" {
  type    = string
}

variable "private_cidr2" {
  type    = string
}

variable "private_cidr3" {
  type    = string
}

variable "az1" {
  type    = string
}

variable "az2" {
  type    = string
}

variable "az3" {
  type    = string
}

variable "public_subnet_cidr_blocks" {
  type = list
  default = [
    var.public_cidr1,
    var.public_cidr2,
    var.public_cidr3,
  ]
}

variable "private_subnet_cidr_blocks" {
  type = list
  default = [
    var.private_cidr1,
    var.private_cidr2,
    var.private_cidr3,
  ]
}

variable "availability_zones" {
  type = list
  default = [
    var.az1,
    var.az2,
    var.az3,
  ]
}



module "vpc" {
  source = "./modules/vpc"

  availability_zones        = var.availability_zones
  environment               = var.environment
  vpc_cidr_block            = var.vpc_cidr_block
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
}

output "vpc_id" {
  value = module.vpc.id
}
