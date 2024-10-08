resource "aws_s3_bucket_policy" "bucket_policy" {

    depends_on = [ time_sleep.sleep15 ]
    bucket = aws_s3_bucket.s3_web.bucket
 
    policy = jsonencode({
    Version = "2012-10-17"
    Id      = "policy-${var.app_name}-${terraform.workspace}"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = [
                "s3:GetObject"
            ]
        Resource = [
          "${aws_s3_bucket.s3_web.arn}/*"
        ]
      }
    ]
  })
} 
