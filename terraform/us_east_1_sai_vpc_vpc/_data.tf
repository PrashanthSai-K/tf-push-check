# Shared data sources — pre-declared for every module.
# DO NOT redeclare these in main.tf; reference them directly.

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

data "aws_region" "current" {}