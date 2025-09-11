# Public Route Table
resource "aws_route_table" "tfer--rtb-02e2b0e7d5ba0d441" {
  vpc_id = data.aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.main.id
  }

  tags = {
    Name = "PUB-RT"
  }
}

# Private Route Table
resource "aws_route_table" "tfer--rtb-03a439676c94e13f9" {
  vpc_id = data.aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = data.aws_nat_gateway.main.id
  }

  tags = {
    Name = "PRIV-RT"
  }
}

# Main Route Table
resource "aws_route_table" "tfer--rtb-067cd938aa6bfff61" {
  vpc_id = data.aws_vpc.main.id

  tags = {
    Name = "MAIN-RT"
  }
}

# VPN Route Table
resource "aws_route_table" "tfer--rtb-0ef557541f5e226ee" {
  vpc_id = data.aws_vpc.main.id

  tags = {
    Name = "VPN-RT"
  }
}