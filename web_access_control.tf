resource "aws_cloudfront_origin_access_control" "web_access_control" {
  name                              = "${aws_s3_bucket.s3_web.bucket}" 
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}