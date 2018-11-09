variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "availability_zones" {
  description = "Availability zones"
  default     = "sa-east-1a"
}

variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}

variable "secret_key" {
  description = "AWS secret_key"
  default     = "Write your AWS Secret key here"
}

variable "access_key" {
  description = "AWS Access key"
  default     = "Write your AWS Access key here"
}

variable "region" {
  description = "AWS Region"
  default     = "sa-east-1"
}
