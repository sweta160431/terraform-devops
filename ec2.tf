resource "aws_key_pair" "test_key" {
    key_name = "test_key"
    public_key = file("~/.ssh/id_ed25519.pub")
}

resource "aws_default_vpc" "default" {
}

resource "aws_security_group" "my_sg" {
    name = "Z plus security"
    description = "security created bt terraform"
    vpc_id = aws_default_vpc.default.id

    ingress {
        description = "allow access to ssh port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}

    ingress {
        description = "allow access to HTTP port 80"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
} 

    egress {
        description = "allow all outgoing traffic"
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
}

   tags = {
       Name = "my_security"
      } 
}

resource "aws_instance" "test_instance" {
    ami = var.aws_ec2_ami_id
    instance_type = var.aws_ec2_instance_type
    security_groups = [aws_security_group.my_sg.name]
    key_name = aws_key_pair.test_key.key_name
    root_block_device {
        volume_size = var.aws_root_volume_size
        volume_type = "gp3"
}

tags = {
    Name = var.aws_ec2_instance_name
    }
}

 
