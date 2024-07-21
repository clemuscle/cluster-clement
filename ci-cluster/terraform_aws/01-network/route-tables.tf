resource "aws_route_table" "eks_route_table" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_gateway.id
  }

  tags = {
    Name = "eks-route-table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.eks_subnet1.id
  route_table_id = aws_route_table.eks_route_table.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.eks_subnet2.id
  route_table_id = aws_route_table.eks_route_table.id
}