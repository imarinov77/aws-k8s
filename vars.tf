variable "aws_region" {
  default = "eu-central-1"
}

variable "access_key" {
  default = "AKIASSXFGXBRTWS77H5J"
}

variable "secret_key" {
  default = "pTTas3uoEAASF/kKxfIFprn61sco5zwJcw7Ffrfr"
}

variable "amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
    eu-central-1 = "ami-0d527b8c289b4af7f"
  }
}

variable "linux_user" {
  default = "ubuntu"
}

