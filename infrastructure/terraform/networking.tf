# ------------------------
# VPC
# ------------------------
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "secure-blog-vpc"
  }
}

# ------------------------
# Public Subnet
# ------------------------
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "secure-blog-public-subnet"
  }
}

# ------------------------
# Private Subnet
# ------------------------
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "secure-blog-private-subnet"
  }
}

# ------------------------
# Internet Gateway
# ------------------------
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "secure-blog-igw"
  }
}

# ------------------------
# Public Route Table
# ------------------------
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "secure-blog-public-rt"
  }
}

# Route: Internet access
resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# ------------------------
# Route Table Association (Public)
# ------------------------
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}