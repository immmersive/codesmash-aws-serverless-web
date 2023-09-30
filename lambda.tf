resource "aws_lambda_function" "lambda" {
    filename            = "lambda_code.zip" 
    function_name       = "${var.app_name}_${terraform.workspace}"
    role                = aws_iam_role.role.arn
    handler             = "index.handler"
    memory_size         = "128"
    timeout             = "10"
    provider            = aws.us-east-1
    publish = true

    source_code_hash    = base64sha256("lambda_code.zip")

    runtime             = "nodejs18.x"
}
