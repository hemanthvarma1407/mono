provider "aws" {
region = "ap-northeast-1"
access_key = "AKIAVNHPR4OBYWJX5QMO"
secret_key = "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"
}
resource "aws_instance" "key" {
ami = "ami-0ffac3e16de16665e"
instance_type = "t2.micro"
key_name = "last-keypair"
vpc_security_group_ids = [aws_security_group.security-sg.id]
tags = {
Name = "my-new"
Enovirement = "dev"
}
}
