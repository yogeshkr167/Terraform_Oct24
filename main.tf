provider "aws" {
    region =  "us-east-1"
}
resource "aws_instance" "Test" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
}
output "instance_ip" {
    value = aws_instance.Test.public_ip
}