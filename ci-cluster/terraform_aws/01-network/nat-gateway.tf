resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.eks_subnet1.id

  tags = {
    Name = "eks-nat-gateway"
  }
}
