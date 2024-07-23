variable "mykey" {
  default = "my-key-pair" #!change with your key
}

variable "instancetype" {
  default = "t3a.medium"
}
variable "tag" {
  default = "Jenkins_Server"
}
variable "jenkins-sg" {
  default = "jenkins-server-sec-gr"
}

variable "user" {
  default = "abraham" #!change with your user
}