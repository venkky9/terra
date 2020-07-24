variable "AWS_REGION" {
  default = "us-west-2"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "oregon"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "oregon.pub"
}
variable "AMIS" {
  type = "map"
  default = {
    us-west-2 = "ami-0a243dbef00e96192"
    us-west-2 = "ami-003634241a8fcdec0"
    us-west-2 = "ami-0fb16d6843cf910d7"
  }
}
