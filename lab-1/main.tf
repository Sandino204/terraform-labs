provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm" {
  ami = "ami-0588935a949f9ff17"
  subnet_id = "subnet-0af3f77e7b7a21a12"
  instance_type = "t3.micro"

  tags = {
    Name = "my-first-tf-node"
  }
}