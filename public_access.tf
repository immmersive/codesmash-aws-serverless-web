resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.s3_web.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}