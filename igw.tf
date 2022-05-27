resource "aws_internet_gateway" "eks_cluster_vpc" {
  vpc_id = aws_vpc.eks_cluster_vpc.id

  tags = {
    Name = "${var.env}-${var.app}-igw"
  }
}