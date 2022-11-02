provider "aws" {
region = "us-east-1"
<<<<<<< HEAD:main.tf
access_key = "--------------------------"
secret_key = "----------------------------"

}
resource "aws_instance" "web-inst" {
  count = 2 # generate two similar EC2 instances
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t3.xlarge"
  tags = {
    Name = "Instance ${count.index}"
    Owner = "Bits Lovers"
  }
=======
access_key = "*****************"
secret_key = "****************************"

}

variable "instances" {
type = map
default = {
  clef1 = "ami-08c40ec9ead489470"
  clef2 = "ami-06640050dc3f556bb"


 }
}

resource "aws_instance" "web" {
for_each = var.instances
ami = each.value
instance_type = "t2.micro"
tags = {
Name = each.key

}
>>>>>>> 09e13d096fc414bd63d69f9f0f9084b349cd3433:provisionnement_ec2.tf
}
