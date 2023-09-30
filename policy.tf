resource "aws_iam_policy" "policy" {

    name            = "${var.app_name}_${terraform.workspace}"
    description     = "${var.app_name}_${terraform.workspace}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [        
        {
            "Action": "lambda:*",
            "Effect": "Allow",            
            "Resource": "*"
        },
        {
            "Action": "logs:CreateLogGroup",
            "Effect": "Allow",            
            "Resource": "*"
        },
        {
            "Action": "dynamodb:*",
            "Effect": "Allow",
            "Resource": "*"
        },        
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
        },
        {            
            "Action": "kinesis:*",
            "Effect": "Allow",
            "Resource": "*"            
        },
        {            
            "Action": "cognito:*",
            "Effect": "Allow",
            "Resource": "*"            
        },
        {            
            "Action": "sns:*",
            "Effect": "Allow",
            "Resource": "*"            
        },
        {            
            "Action": [ "logs:CreateLogStream", "logs:PutLogEvents" ],
            "Effect": "Allow",
            "Resource": "*"
        },
        {            
            "Action": "execute-api:*",
            "Effect": "Allow",
            "Resource": "*"            
        }   
    ]
}
EOF
}
