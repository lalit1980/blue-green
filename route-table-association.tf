# Resource: aws_route_table_association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource "aws_route_table_association" "public11" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.public_11.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public11.id
}

resource "aws_route_table_association" "public22" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.public_22.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public11.id
}

resource "aws_route_table_association" "private11" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.private_11.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.private11.id
}

resource "aws_route_table_association" "private22" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.private_22.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.private22.id
}
