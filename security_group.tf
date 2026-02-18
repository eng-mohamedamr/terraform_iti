resource "aws_security_group" "sg1" {
  name        = var.security_group_name1
  description = "Allow SSH, HTTP and HTTPS"
  vpc_id      = module.network.vpc_id

  # allow SSH FROM 0.0.0.0/0
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # allow HTTP FROM 0.0.0.0/0
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # allow HTTPS FROM 0.0.0.0/0
  ingress {
    from_port   = 443
    to_port     = 443
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
    Name = "route-group"
  }
}

      # security group to allow the bastion server to reach the instance that in the private subnet

resource "aws_security_group" "sg2" {
  name        = var.security_group_name2
  description = "Allow SSH, HTTP and HTTPS"
  vpc_id      = module.network.vpc_id

  # allow SSH FROM 0.0.0.0/0
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }
  # allow SSH FROM my cidr
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }
  tags = {
    Name = "route-group-2"
  }
}