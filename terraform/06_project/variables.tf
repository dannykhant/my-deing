variable "bucket_name" {
  description = "the name of the bucket"
  type = string
}

variable "aws_profile" {
    description = "The AWS profile to use"
    type = string
}

variable "aws_region" {
    description = "The AWS region to deploy resources in"
    type = string
    default = "us-east-1"
}