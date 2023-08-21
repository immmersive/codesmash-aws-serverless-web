output "bucket_id" {    
    value = "${aws_s3_bucket.s3_web.id}"
}

output "cloudfront_id" {
    value = "${aws_cloudfront_distribution.cloudfront_web.id}"
}

output "cloudfront_domain" {
    value = "${aws_cloudfront_distribution.cloudfront_web.domain_name}"
}
