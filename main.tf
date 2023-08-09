provider "aws" {  
    access_key = var.access_key
    secret_key = var.secret_key
    region     = var.region
}
 
terraform {
 backend "s3" {
 encrypt = true
 bucket = var.bucket
 region = var.region
 key = var.key
 }
}