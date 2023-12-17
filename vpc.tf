resource "aws_vpc" "prod" {
  cidr_block       = "10.0.0.0/8"
  instance_tenancy = "default"

  tags = {
    Name = "prod"
  }
}


# public Subnets
resource "aws_subnet" "main-public-1" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.1.0.0/16"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-3a"

  tags = {
    Name = "prod-public-1"
  }
}

resource "aws_subnet" "main-public-2" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.2.0.0/16"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-3b"

  tags = {
    Name = "prod-public-2"
  }
}

resource "aws_subnet" "main-public-3" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.3.0.0/16"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-3c"

  tags = {
    Name = "prod-public-3"
  }
}