variable "instance_type" {
  type = string
  description = "EC2 instance type for compute instances"
}

variable "ebs_optimized" {
  type = bool
  description = "Whether instances should be EBS optimized"
}

variable "key_name" {
  type = string
  description = "EC2 Key Pair name for SSH access"
}

