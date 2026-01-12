provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "name" {
    count = 2
    instance_type = "t3.micro"
    ami           = "ami-02b8269d5e85954ef"
    tags = {
        Name = "hcp-server"
    }
}
