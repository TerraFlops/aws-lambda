variable "function_name" {
  description = "The name of the lambda function"
  type = string
}

variable "runtime" {
  description = "The runtime of the lambda to create"
  type = string
}

variable "filename" {
  description = "Filename"
  type = string
}

variable "handler" {
  description = "The handler name of the lambda function"
  type = string
}

variable "memory" {
  description = "The memory size of the lambda function"
  type = number
}

variable "role" {
  description = "IAM role attached to the Lambda Function (ARN)"
  type = string
}

variable "subnet_ids" {
  description = "Which subnets to associate with lambda"
  type = set(string)
}

variable "security_group_ids" {
  description = "Which security groups to associate with lambda"
  type = set(string)
}

variable "description" {
  type = string
}