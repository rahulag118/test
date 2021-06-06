# Provider 
provider "aws" {
    region= "us-east-1"
}
resource "aws_instance" "dev_instance"{
  ami           = "ami-0d5eff06f840b45e9"
  tenancy       = "default"
  instance_type = "t2.micro"
  tags = {
    Name = "instance"
  }
}
