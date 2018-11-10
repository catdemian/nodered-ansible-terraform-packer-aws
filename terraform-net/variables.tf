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

variable "access_key" {}
variable "secret_key" {}

variable "region" {
  description = "AWS Region"
  default     = "sa-east-1"
}
