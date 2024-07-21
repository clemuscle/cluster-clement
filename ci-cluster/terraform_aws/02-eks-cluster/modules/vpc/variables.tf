variable "name" {
  description = "The name of the VPC."
  type        = string
  default     = "education-vpc"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "List of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "List of public subnets inside the VPC"
  type        = list(string)
  default     = []
}
