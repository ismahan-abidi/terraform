provider "aws" {
region = "us-east-1"
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
}
