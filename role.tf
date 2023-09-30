resource "aws_iam_role" "role" {
    name                = "${var.app_name}_${terraform.workspace}"

  assume_role_policy    = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [    
    {
        "Effect": "Allow",
        "Principal": {
            "Service": [
                "lambda.amazonaws.com",
                "edgelambda.amazonaws.com"
            ]
        },
        "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
