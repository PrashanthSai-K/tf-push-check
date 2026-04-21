# Module: us_east_1_sai_vpc_vpc_compute
import {
  to = aws_instance.instance_i_02f5ce094ee6cfd09
  id = "i-02f5ce094ee6cfd09"
}

resource "aws_instance" "instance_i_02f5ce094ee6cfd09" {
  ami                     = "ami-0c02fb55956c7d316"
  instance_type           = "t3.micro"
  subnet_id               = "subnet-025a63b927b456eec"
  vpc_security_group_ids  = ["sg-04e51d8694769f6cf"]
  availability_zone       = "us-east-1a"
  ebs_optimized          = false
  monitoring             = false
  tenancy                = "default"
  private_ip             = "10.0.11.79"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6         = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                = "required"
    instance_metadata_tags     = "disabled"
  }

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Env        = "sai-vpc"
    Name       = "sai-vpc-app-server"
    Role       = "app"
    createdby  = "saiprashanthk@presidio.com"
    modifiedby = "saiprashanthk@presidio.com"
  }
}

import {
  to = aws_instance.instance_i_0ce4a042b47e5ebe7
  id = "i-0ce4a042b47e5ebe7"
}

resource "aws_instance" "instance_i_0ce4a042b47e5ebe7" {
  ami                     = "ami-0c02fb55956c7d316"
  instance_type           = "t3.micro"
  subnet_id               = "subnet-044b7c73c164c1ce9"
  vpc_security_group_ids  = ["sg-0c0e9aa6448dd7162"]
  availability_zone       = "us-east-1a"
  ebs_optimized          = false
  monitoring             = false
  tenancy                = "default"
  private_ip             = "10.0.1.207"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6         = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                = "required"
    instance_metadata_tags     = "disabled"
  }

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Env  = "sai-vpc"
    Name = "sai-vpc-bastion"
    Role = "bastion"
  }
}