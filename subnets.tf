# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
resource "aws_subnet" "public_11" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id
  # The CIDR block for the subnet.
  cidr_block = "192.168.0.0/18"
  # The AZ for the subnet.
  availability_zone = "ap-southeast-1a"
  # Required for EKS. Instances launched into the subnet should be assigned a public IP address.
  map_public_ip_on_launch = true
  # A map of tags to assign to the resource.
  tags = {
    Name                        = "public-route53-ap-southeast-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}
resource "aws_subnet" "public_22" {
  # The VPC ID
  vpc_id = aws_vpc.main.id
  # The CIDR block for the subnet.
  cidr_block = "192.168.64.0/18"
  # The AZ for the subnet.
  availability_zone = "ap-southeast-1b"
  # Required for EKS. Instances launched into the subnet should be assigned a public IP address.
  map_public_ip_on_launch = true
  # A map of tags to assign to the resource.
  tags = {
    Name                        = "public-route53-ap-southeast-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}
resource "aws_subnet" "private_11" {
  # The VPC ID
  vpc_id = aws_vpc.main.id
  # The CIDR block for the subnet.
  cidr_block = "192.168.128.0/18"
  # The AZ for the subnet.
  availability_zone = "ap-southeast-1a"
  # A map of tags to assign to the resource.
  tags = {
    Name                              = "private-route53-ap-southeast-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}
resource "aws_subnet" "private_22" {
  # The VPC ID
  vpc_id = aws_vpc.main.id
  # The CIDR block for the subnet.
  cidr_block = "192.168.192.0/18"
  # The AZ for the subnet.
  availability_zone = "ap-southeast-1b"
  # A map of tags to assign to the resource.
  tags = {
    Name                              = "private-route53-ap-southeast-1b"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}
