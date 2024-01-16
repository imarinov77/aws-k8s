variable "aws_region" {
  type        = string
  default     = "eu-central-1"
  description = "AWS region"
}

variable "amis" {
  type = map(string)
  default = {
    us-west-2    = "ami-008fe2fc65df48dac"
    eu-central-1 = "ami-0faab6bdbac9486fb"
  }
  description = "AMIs by region"
}

variable "linux_user" {
  type        = string
  default     = "ubuntu"
  description = "linux user"
}

variable "k8s_workers" {
  type        = number
  default     = 3
  description = "k8s workers count"
}
