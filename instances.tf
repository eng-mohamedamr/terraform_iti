resource "aws_instance" "my_instance_1" {
  ami           = var.ami # Amazon Linux 2 (change based on region)
  instance_type = var.instance_type

  tags = {
    Name = "MyFirstInstance"
  }
}
resource "aws_instance" "my_instance_2" {
  ami           = var.ami # Amazon Linux 2 (change based on region)
  instance_type = var.instance_type

  tags = {
    Name = "MySecondInstance"
  }
}