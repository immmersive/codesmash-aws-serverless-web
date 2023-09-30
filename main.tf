provider "aws" {  
    region     = var.region
}

provider "aws" {  
    alias      = "us-east-1"
    region     = "us-east-1"
}
 
terraform {
 backend "s3" {
 encrypt = true
 bucket = var.bucket
 region = var.region
 key = var.key
 }
}
