resource "aws_lambda_function" "lambda" {
  function_name = var.function_name
  description = var.description
  filename = var.filename
  source_code_hash = filesha512(var.filename)
  role = var.role
  handler = var.handler
  runtime = var.runtime
  memory_size = var.memory
  timeout = 900
  vpc_config {
    subnet_ids = var.subnet_ids
    security_group_ids = var.security_group_ids
  }
}