// 3 pub subnets

resource "aws_subnet" "pub_sub_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_1

  tags = {
    Name = "${var.env}-${var.app}-pub-subnet-1"
  }
}


resource "aws_subnet" "pub_sub_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_2

  tags = {
    Name = "${var.env}-${var.app}-pub-subnet-2"
  }
}

resource "aws_subnet" "pub_sub_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_3

  tags = {
    Name = "${var.env}-${var.app}-pub-subnet-3"
  }
}

// 3 private subnets

resource "aws_subnet" "pri_sub_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pri_sub_1

  tags = {
    Name = "${var.env}-${var.app}-pri-subnet-1"
  }
}

resource "aws_subnet" "pri_sub_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pri_sub_2

  tags = {
    Name = "${var.env}-${var.app}-pri-subnet-2"
  }
}

resource "aws_subnet" "pri_sub_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pri_sub_3

  tags = {
    Name = "${var.env}-${var.app}-pri-subnet-3"
  }
}