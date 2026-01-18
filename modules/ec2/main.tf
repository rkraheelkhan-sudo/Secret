# Ye file batati hai ke EC2 instance kaise banana hai
resource "aws_instance" "this" {
  ami           = var.ami_id        # Variable se AMI lega
  instance_type = var.instance_type # Variable se instance type lega

  tags = {
    Name = var.instance_name       # Variable se Name tag lega
  }
}
