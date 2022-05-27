resource "aws_eip" "eks_cluster_vpc" {
  tags = {
    Name = "${var.env}-${var.app}-eip"
  }
}
