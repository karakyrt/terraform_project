resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.env}-${var.app}-vpc"
  }
}
//"${var.env}-${var.project}-vpc"-----how to read this line from vpc.tf, inside variables.tf, dev-web-vpc
//this -vpc is not change for all environments