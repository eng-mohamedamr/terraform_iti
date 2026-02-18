    #bastion EC2
resource "aws_instance" "my_instance_1" {
  ami           = var.ami # Amazon Linux 2 (change based on region)
  instance_type = var.instance_type
  subnet_id = module.network.public2_id
  vpc_security_group_ids = [aws_security_group.sg1.id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo public ip of bastion is ${self.public_ip} > provisioner.txt" 
  }
  tags = {
    Name = "MyFirstInstance"
  }
}
    #Private EC2
resource "aws_instance" "my_instance_2" {
  ami           = var.ami # Amazon Linux 2 (change based on region)
  instance_type = var.instance_type
  subnet_id = aws_subnet.private_2.id
  vpc_security_group_ids = [aws_security_group.sg2.id]
  tags = {
    Name = "MySecondInstance"
  }
}