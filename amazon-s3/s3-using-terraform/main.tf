resource "aws_s3_bucket" "my-first-bucket-via-terraforms" {
  
    bucket =  "my-first-bucket-via-terraform"
    acl = "private"


    tags = {
        Name = "My first bucket via terraform!!"
        Environment = "dev"
    }

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = false
    }
}

# Adding an IAM user
