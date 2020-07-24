provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIAJP5XI3UAHB7XKEGQ"
  secret_key = "MEq9UxkckwyGO7ozv5IplAeVetspy7EnUWCBhhvV"

}
resource "aws_instance" "example" {

  ami                    = "ami-078648cce0d33c256"
  instance_type          = "t2.micro"
  key_name               = "tokyo"
  vpc_security_group_ids = ["main"]

  tags = {
    name   = "terraform_instance"
  }
}
