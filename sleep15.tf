resource "time_sleep" "sleep15" {
  depends_on = [ aws_s3_bucket.s3_web, aws_lambda_function.lambda ]

  create_duration = "15s"
}
