variable "aws_region" {
      description = "Region specified for AWS Region"
      default = "us-east-1"
}

variable "aws_ec2_ami_id" {
      description = "AMI id for Ubuntu instance"
      default = "ami-04b4f1a9cf54c11d0"
}

variable "aws_ec2_instance_type" {
      description = "Instance type for EC2 Instance"
      default = "t2.micro"
}

variable "aws_ec2_instance_name" {
      description = "Name given to EC2 Instance"
      default = "project-server"
}

variable "aws_root_volume_size" {
      description = "Size of the root volume for AWS EC2"
      default = 10
}


