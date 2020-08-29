variable "aws_region" {
  type    = string
  default = var.region
}

variable "aws_account_ids" {
  type    = list
  default = null
}

terraform {
  required_version = ">= 0.12.20"
}

provider "aws" {
  region              = var.aws_region
  allowed_account_ids = var.aws_account_ids
  profile             = "default"
  version             = ">= 2.46.0"
}
