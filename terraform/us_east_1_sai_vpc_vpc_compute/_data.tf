# Shared data sources — pre-declared for every module.
# DO NOT redeclare these in main.tf; reference them directly.

data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

data "aws_security_group" "SecurityGroup" {
  # Cross-module reference stub
}

data "aws_subnet" "PrivateSubnet1" {
  # Cross-module reference stub
}

data "aws_subnet" "PrivateSubnet2" {
  # Cross-module reference stub
}

data "aws_vpc" "VPC" {
  # Cross-module reference stub
}