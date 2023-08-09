resource "time_sleep" "sleep10" {
  depends_on = [ aws_s3_bucket.s3_web ]

  create_duration = "10s"
}