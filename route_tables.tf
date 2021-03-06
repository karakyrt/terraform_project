resource "aws_route_table" "custom" {
  vpc_id = aws_vpc.eks_cluster_vpc.id

  tags = {
    Name = "${var.env}-${var.app}-public-table"
  }
}

resource "aws_route_table" "custom_1" {
  vpc_id = aws_vpc.eks_cluster_vpc.id

  tags = {
    Name = "${var.env}-${var.app}-private-table"
  }
}

// Ctrl + D-----this to make copies many lines in code

//////////////////////////Create Public Subnets Association//////////////////////////////

// in this file we will added Subnet association, or we can ceate seporate file

resource "aws_route_table_association" "pub_sub_1" {
  subnet_id      = aws_subnet.pub_sub_1.id
  route_table_id = aws_route_table.custom.id
}

resource "aws_route_table_association" "pub_sub_2" {
  subnet_id      = aws_subnet.pub_sub_2.id
  route_table_id = aws_route_table.custom.id
}

resource "aws_route_table_association" "pub_sub_3" {
  subnet_id      = aws_subnet.pub_sub_3.id
  route_table_id = aws_route_table.custom.id
}


//////////////////////////Create Private Subnets Association//////////////////////////////

resource "aws_route_table_association" "pri_sub_1" {
  subnet_id      = aws_subnet.pri_sub_1.id
  route_table_id = aws_route_table.custom_1.id
}

resource "aws_route_table_association" "pri_sub_2" {
  subnet_id      = aws_subnet.pri_sub_2.id
  route_table_id = aws_route_table.custom_1.id
}

resource "aws_route_table_association" "pri_sub_3" {
  subnet_id      = aws_subnet.pri_sub_3.id
  route_table_id = aws_route_table.custom_1.id
}

// add aditional routes for internat gateway and nat gateway

resource "aws_route" "igw" {
  route_table_id            = aws_route_table.custom.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.eks_cluster_vpc.id
}

resource "aws_route" "nat" {
  route_table_id            = aws_route_table.custom_1.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = aws_nat_gateway.eks_cluster_vpc.id
}