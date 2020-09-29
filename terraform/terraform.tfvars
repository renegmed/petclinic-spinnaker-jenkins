
region = "us-east-1"
environment = "Development"
vpc_cidr = "10.0.0.0/16"
public_subnet_1_cidr  = "10.0.1.0/24"
public_subnet_2_cidr  = "10.0.2.0/24"
public_subnet_3_cidr  = "10.0.3.0/24"
private_subnet_1_cidr = "10.0.10.0/24"
private_subnet_2_cidr = "10.0.11.0/24"
private_subnet_3_cidr = "10.0.12.0/24"
instance_type = "t2.medium"
# Amazon Linux 2 AMI (HVM), SSD Volume Type - ami-0947d2ba12ee1ff75 (64-bit x86)
instance_ami = "ami-0947d2ba12ee1ff75"
keyname = "kuber-key-pair"
