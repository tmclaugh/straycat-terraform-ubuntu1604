terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "straycat-dhs-org-straycat-terraform"
      key     = "ubuntu1604.tfstate"
      region  = "us-east-1"
    }
  }
}

/*
* aws vars for Terraform
*/
aws_s3_prefix           = "straycat-dhs-org"
aws_account             = "straycat"
aws_profile             = "straycat"    # AWS credentials profile name
aws_region              = "us-east-1"

svc_name = "ubuntu1604"
ami_id = "ami-2c57433b"
instance_type = "t2.micro"

asg_min_size            = 0
asg_max_size            = 0
asg_desired_capacity    = 0

subnet_type = "public"

security_group_service_ingress = {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_block = "0.0.0.0/0"
}

# Does not yet work.
github_organization     = "tmclaugh"
