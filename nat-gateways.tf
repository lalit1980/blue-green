# Resource: aws_nat_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway
resource "aws_nat_gateway" "gw11" {
  # The Allocation ID of the Elastic IP address for the gateway.
  allocation_id = aws_eip.nat11.id
  # The Subnet ID of the subnet in which to place the gateway.
  subnet_id = aws_subnet.public_11.id
  # A map of tags to assign to the resource.
  tags = {
    Name = "NAT 11"
  }
}
resource "aws_nat_gateway" "gw22" {
  # The Allocation ID of the Elastic IP address for the gateway.
  allocation_id = aws_eip.nat22.id
  # The Subnet ID of the subnet in which to place the gateway.
  subnet_id = aws_subnet.public_22.id
  # A map of tags to assign to the resource.
  tags = {
    Name = "NAT 22"
  }
}
