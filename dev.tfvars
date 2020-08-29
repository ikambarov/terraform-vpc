s3_bucket = "jenkins-terraform-evolvecybertraining"
s3_folder_project = "terraform_vpc"
s3_folder_region = "us-east-1"
s3_folder_type = "class"
s3_tfstate_file = "infrastructure.tfstate"
environment = "dev"

region   = "us-east-1"
az1      = "us-east-1a"
az2      = "us-east-1b"
az3      = "us-east-1c"

vpc_cidr_block  = "172.32.0.0/16"

public_cidr1    = "172.32.1.0/24"
public_cidr2    = "172.32.2.0/24"
public_cidr3    = "172.32.3.0/24"

private_cidr1   = "172.32.10.0/24"
private_cidr2   = "172.32.11.0/24"
private_cidr3   = "172.32.12.0/24"
