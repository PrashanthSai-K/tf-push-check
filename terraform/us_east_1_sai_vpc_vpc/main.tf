# Module: us_east_1_sai_vpc_vpc

# Module: us_east_1_sai_vpc_vpc

import {
  to = aws_vpc_dhcp_options.dhcp_options_dopt_00956455b1342abe4
  id = "dopt-00956455b1342abe4"
}

resource "aws_vpc_dhcp_options" "dhcp_options_dopt_00956455b1342abe4" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {}
}

import {
  to = aws_internet_gateway.internet_gateway_igw_0697a3fa07f23aed5
  id = "igw-0697a3fa07f23aed5"
}

resource "aws_internet_gateway" "internet_gateway_igw_0697a3fa07f23aed5" {
  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-igw"
  }
  depends_on = [
    aws_vpc.vpc_vpc_07aa065f88134979b,
  ]
}

import {
  to = aws_nat_gateway.nat_gateway_nat_05db5cb9280c2b25a
  id = "nat-05db5cb9280c2b25a"
}

resource "aws_nat_gateway" "nat_gateway_nat_05db5cb9280c2b25a" {
  allocation_id     = "eipalloc-0ffc5ecf7738afbdd"
  connectivity_type = "public"
  subnet_id         = aws_subnet.subnet_subnet_044b7c73c164c1ce9.id

  tags = {}
}

import {
  to = aws_vpc_dhcp_options_association.dhcp_assoc_vpc_07aa065f88134979b
  id = "vpc-07aa065f88134979b"
}

resource "aws_vpc_dhcp_options_association" "dhcp_assoc_vpc_07aa065f88134979b" {
  vpc_id          = aws_vpc.vpc_vpc_07aa065f88134979b.id
  dhcp_options_id = aws_vpc_dhcp_options.dhcp_options_dopt_00956455b1342abe4.id
}

import {
  to = aws_route_table_association.route_assoc_rtb_02f7ffa4682bcd39f_subnet_044b7c73c164c1ce9
  id = "subnet-044b7c73c164c1ce9/rtb-02f7ffa4682bcd39f"
}

resource "aws_route_table_association" "route_assoc_rtb_02f7ffa4682bcd39f_subnet_044b7c73c164c1ce9" {
  subnet_id      = aws_subnet.subnet_subnet_044b7c73c164c1ce9.id
  route_table_id = aws_route_table.route_table_rtb_02f7ffa4682bcd39f.id
}

import {
  to = aws_route_table_association.route_assoc_rtb_02f7ffa4682bcd39f_subnet_0f0bd30d5cd55a7c4
  id = "subnet-0f0bd30d5cd55a7c4/rtb-02f7ffa4682bcd39f"
}

resource "aws_route_table_association" "route_assoc_rtb_02f7ffa4682bcd39f_subnet_0f0bd30d5cd55a7c4" {
  subnet_id      = aws_subnet.subnet_subnet_0f0bd30d5cd55a7c4.id
  route_table_id = aws_route_table.route_table_rtb_02f7ffa4682bcd39f.id
}

import {
  to = aws_route_table_association.route_assoc_rtb_0aae5f193fcb3c573_subnet_025a63b927b456eec
  id = "subnet-025a63b927b456eec/rtb-0aae5f193fcb3c573"
}

resource "aws_route_table_association" "route_assoc_rtb_0aae5f193fcb3c573_subnet_025a63b927b456eec" {
  subnet_id      = aws_subnet.subnet_subnet_025a63b927b456eec.id
  route_table_id = aws_route_table.route_table_rtb_0aae5f193fcb3c573.id
}

import {
  to = aws_route_table_association.route_assoc_rtb_0aae5f193fcb3c573_subnet_0cc220661525ef943
  id = "subnet-0cc220661525ef943/rtb-0aae5f193fcb3c573"
}

resource "aws_route_table_association" "route_assoc_rtb_0aae5f193fcb3c573_subnet_0cc220661525ef943" {
  subnet_id      = aws_subnet.subnet_subnet_0cc220661525ef943.id
  route_table_id = aws_route_table.route_table_rtb_0aae5f193fcb3c573.id
}

import {
  to = aws_route.route_rtb_02f7ffa4682bcd39f_0_0_0_0_0
  id = "rtb-02f7ffa4682bcd39f_0.0.0.0/0"
}

resource "aws_route" "route_rtb_02f7ffa4682bcd39f_0_0_0_0_0" {
  route_table_id         = aws_route_table.route_table_rtb_02f7ffa4682bcd39f.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.internet_gateway_igw_0697a3fa07f23aed5.id
}

import {
  to = aws_route.route_rtb_0aae5f193fcb3c573_0_0_0_0_0
  id = "rtb-0aae5f193fcb3c573_0.0.0.0/0"
}

resource "aws_route" "route_rtb_0aae5f193fcb3c573_0_0_0_0_0" {
  route_table_id         = aws_route_table.route_table_rtb_0aae5f193fcb3c573.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway_nat_05db5cb9280c2b25a.id
}

import {
  to = aws_route_table.route_table_rtb_02f7ffa4682bcd39f
  id = "rtb-02f7ffa4682bcd39f"
}

resource "aws_route_table" "route_table_rtb_02f7ffa4682bcd39f" {
  vpc_id = aws_vpc.vpc_vpc_07aa065f88134979b.id

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-public-rt"
  }
}

import {
  to = aws_route_table.route_table_rtb_07d295713fb58aaad
  id = "rtb-07d295713fb58aaad"
}

resource "aws_route_table" "route_table_rtb_07d295713fb58aaad" {
  vpc_id = aws_vpc.vpc_vpc_07aa065f88134979b.id

  tags = {}
}

import {
  to = aws_route_table.route_table_rtb_0aae5f193fcb3c573
  id = "rtb-0aae5f193fcb3c573"
}

resource "aws_route_table" "route_table_rtb_0aae5f193fcb3c573" {
  vpc_id = aws_vpc.vpc_vpc_07aa065f88134979b.id

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-private-rt"
  }
}

import {
  to = aws_security_group.security_group_sg_04e51d8694769f6cf
  id = "sg-04e51d8694769f6cf"
}

resource "aws_security_group" "security_group_sg_04e51d8694769f6cf" {
  name        = "sai-vpc-app-sg"
  description = "App servers - allow HTTP internally"
  vpc_id      = aws_vpc.vpc_vpc_07aa065f88134979b.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    description     = "SSH from bastion"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.security_group_sg_0c0e9aa6448dd7162.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Env        = "sai-vpc"
    Name       = "sai-vpc-app-sg"
    createdby  = "saiprashanthk@presidio.com"
    modifiedby = "saiprashanthk@presidio.com"
  }
}

import {
  to = aws_security_group.security_group_sg_068ab7bc852b2dea6
  id = "sg-068ab7bc852b2dea6"
}

resource "aws_security_group" "security_group_sg_068ab7bc852b2dea6" {
  name        = "default"
  description = "default VPC security group"
  vpc_id      = aws_vpc.vpc_vpc_07aa065f88134979b.id

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {}
}

import {
  to = aws_security_group.security_group_sg_0c0e9aa6448dd7162
  id = "sg-0c0e9aa6448dd7162"
}

resource "aws_security_group" "security_group_sg_0c0e9aa6448dd7162" {
  name        = "sai-vpc-bastion-sg"
  description = "Bastion SSH access"
  vpc_id      = aws_vpc.vpc_vpc_07aa065f88134979b.id

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-bastion-sg"
  }
}

import {
  to = aws_subnet.subnet_subnet_025a63b927b456eec
  id = "subnet-025a63b927b456eec"
}

resource "aws_subnet" "subnet_subnet_025a63b927b456eec" {
  vpc_id                          = aws_vpc.vpc_vpc_07aa065f88134979b.id
  cidr_block                      = "10.0.11.0/24"
  availability_zone_id            = "use1-az1"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-private-subnet-1"
    Tier = "private"
  }
}

import {
  to = aws_subnet.subnet_subnet_044b7c73c164c1ce9
  id = "subnet-044b7c73c164c1ce9"
}

resource "aws_subnet" "subnet_subnet_044b7c73c164c1ce9" {
  vpc_id                          = aws_vpc.vpc_vpc_07aa065f88134979b.id
  cidr_block                      = "10.0.1.0/24"
  availability_zone_id            = "use1-az1"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-public-subnet-1"
    Tier = "public"
  }
}

import {
  to = aws_subnet.subnet_subnet_0cc220661525ef943
  id = "subnet-0cc220661525ef943"
}

resource "aws_subnet" "subnet_subnet_0cc220661525ef943" {
  vpc_id                          = aws_vpc.vpc_vpc_07aa065f88134979b.id
  cidr_block                      = "10.0.12.0/24"
  availability_zone_id            = "use1-az2"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-private-subnet-2"
    Tier = "private"
  }
}

import {
  to = aws_subnet.subnet_subnet_0f0bd30d5cd55a7c4
  id = "subnet-0f0bd30d5cd55a7c4"
}

resource "aws_subnet" "subnet_subnet_0f0bd30d5cd55a7c4" {
  vpc_id                          = aws_vpc.vpc_vpc_07aa065f88134979b.id
  cidr_block                      = "10.0.2.0/24"
  availability_zone_id            = "use1-az2"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-public-subnet-2"
    Tier = "public"
  }
}

import {
  to = aws_vpc.vpc_vpc_07aa065f88134979b
  id = "vpc-07aa065f88134979b"
}

resource "aws_vpc" "vpc_vpc_07aa065f88134979b" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-vpc"
  }
}

output "vpc_vpc_07aa065f88134979b_id" {
  description = "Primary identifier for vpc_vpc_07aa065f88134979b (aws_vpc)"
  value       = aws_vpc.vpc_vpc_07aa065f88134979b.id
}
