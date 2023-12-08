variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-southeast-3"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-southeast-3 = "ami-0d6c66e2edef56378"
    ap-southeast-1 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
  }
}

