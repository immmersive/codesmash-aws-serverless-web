resource "aws_cloudfront_distribution" "cloudfront_web" {
    enabled                 = true
    is_ipv6_enabled         = true 
    default_root_object     = "index.html"

    viewer_certificate {
        cloudfront_default_certificate = true
    }
  
    origin {        
        domain_name = "${aws_s3_bucket.s3_web.bucket_regional_domain_name}"
        origin_id   = "origin_1"
        origin_access_control_id = aws_cloudfront_origin_access_control.web_access_control.id
    }
    
    default_cache_behavior {
        allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
        cached_methods   = ["GET", "HEAD"]
        target_origin_id = "origin_1"

    forwarded_values {
        query_string = false

    cookies {
        forward = "none"
      }
    }
 
    viewer_protocol_policy  = "redirect-to-https"
    default_ttl             = 0
    min_ttl                 = 0
    max_ttl                 = 0
    compress                = true 

    lambda_function_association {
        event_type   = "origin-request"
        lambda_arn   = aws_lambda_function.lambda.qualified_arn
        include_body = false
    }
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
} 
