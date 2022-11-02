provider "aws" {
region = "us-east-1"
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
}
