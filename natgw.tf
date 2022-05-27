resource "aws_nat_gateway" "eks_cluster_vpc" {
  allocation_id = aws_eip.eks_cluster_vpc.id
  subnet_id     = aws_subnet.pub_sub_1.id

  tags = {
    Name = "${var.env}-${var.app}-nat-gateway"
  }
}