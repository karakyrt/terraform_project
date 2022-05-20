terraform {      
  backend "s3" {
    bucket = "terraform-project-95"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  } 
}