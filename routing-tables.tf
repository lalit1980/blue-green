# Resource: aws_route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource "aws_route_table" "public11" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internet gateway or a virtual private gateway.
    gateway_id = aws_internet_gateway.main1.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "public11"
  }
}

resource "aws_route_table" "private11" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway.
    nat_gateway_id = aws_nat_gateway.gw11.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "private11"
  }
}

resource "aws_route_table" "private22" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway.
    nat_gateway_id = aws_nat_gateway.gw22.id
  }

  # A map of tags to assign to the resource.
  tags = {
    Name = "private22"
  }
}