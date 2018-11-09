data "aws_ami" "ec2-ami" {
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Name"
    values = ["noded-red-packer"]
  }

  most_recent = true
}


data "terraform_remote_state" "network" {
  backend = "local"

  config {
    path = "../terraform-net/terraform.tfstate"
  }
}

resource "aws_instance" "nodered" {
  ami           = "${data.aws_ami.ec2-ami.id}"
  instance_type = "t2.micro"
  security_groups = ["${data.terraform_remote_state.network.security_group_sg1}"]
  subnet_id = "${data.terraform_remote_state.network.aws_subnet_output}"
  tags {
    Name = "Node-Red"
  }
}

resource "aws_key_pair" "ec2key" {
  key_name = "publicKey"
  public_key = "${file(var.public_key_path)}"
}

output "ec2keyName" {
  value = "${aws_key_pair.ec2key.key_name}"
}

output "public_eip" {  
  value = "${aws_instance.nodered.public_ip}"
}


