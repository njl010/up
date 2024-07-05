provider "aws" {
  region = "ap-south-1"
}
resource "aws_vpc" "vpc_main" {
  cidr_block = "10.0.0.0/16"
tags = {
	Name = "vp1"
}
}

resource "aws_subnet" "SUBj" {
  vpc_id            = aws_vpc.vpc_main.id
  cidr_block        = "10.0.0.0/16"

  tags = {
    Name = "walhalla"
  }
}

resource "aws_internet_gateway" "gw1" {

  vpc_id = aws_vpc.vpc_main.id
}


