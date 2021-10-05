provider "aws" {
  region = var.aws_region
}
# Create EC2 instance bucket
resource "aws_instance" "Instance-01" {
  ami = var.ami
  key_name = var.key_name
  instance_type = var.instance_type
  tags= {
    Name = var.name
    Owner = var.owner
  }
}

# Create S3 bucket
resource "aws_s3_bucket" "Flugel"{
 bucket = var.bucket_name
 acl    = "private"
  tags= {
    Name = var.name
    Owner = var.owner
  }
}
//Suc0_Cloud
