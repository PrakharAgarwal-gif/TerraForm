resource "aws_vpc" "main1" {
  cidr_block = var.vpc_cidr
}



resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.main1.id
}


resource "aws_subnet" "pub1" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.pub_sub[0]
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "pub2" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.pub_sub[1]
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "priv1" {
  vpc_id = aws_vpc.main1.id
  availability_zone = "ap-south-1a"
  cidr_block = var.priv_sub[0]
}

resource "aws_subnet" "priv2" {
  vpc_id = aws_vpc.main1.id
  availability_zone = "ap-south-1b"
  cidr_block = var.priv_sub[1]
}


resource "aws_eip" "eip1" {
  // I will use it got nat gtw
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.pub1.id
}


resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.main1.id
}

resource "aws_route" "pub_route" {
  route_table_id = aws_route_table.pub_rt.id
  gateway_id     = aws_internet_gateway.igw1.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "pub_assoc1" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "pub_assoc2" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.pub_rt.id
}


resource "aws_route_table" "priv_rt" {
  vpc_id = aws_vpc.main1.id
}

resource "aws_route" "priv_route" {
  route_table_id = aws_route_table.priv_rt.id
  nat_gateway_id = aws_nat_gateway.nat1.id
  destination_cidr_block = "0.0.0.0/0"
}


resource "aws_route_table_association" "priv_assoc1" {
  subnet_id      = aws_subnet.priv1.id
  route_table_id = aws_route_table.priv_rt.id
}
resource "aws_route_table_association" "priv_assoc2" {
  subnet_id      = aws_subnet.priv2.id
  route_table_id = aws_route_table.priv_rt.id
}