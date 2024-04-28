provider "aws" {
    access_key = <iam-user-access_key>
    secret_key = <iam-user-secret_key>
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id = "subnet-0653b70fdeb492730"
  vpc_security_group_ids = ["sg-0d03c97f2ddc32a09"]

  tags = {
    "created-by" = "terraform"
    "author" = "Sriram"
  }
}