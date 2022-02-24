# Resource: aws_eip
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
resource "aws_eip" "nat11" {
  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.main1]
}
resource "aws_eip" "nat22" {
  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.main1]
}
