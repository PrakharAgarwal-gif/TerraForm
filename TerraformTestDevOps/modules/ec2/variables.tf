variable "vpc_id" {

}
variable "alb_sg" {

}
variable "ami" {
}
variable "instance_type" {

}

variable "private_subnets" {
  type = list(string)
}

variable "tg_arn" {
}
