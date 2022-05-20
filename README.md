# terraform_project repo explanation

# this is vpc for dev environment include: all components of vpc, backend.tf for s3, folder values: values_var and with dev.tfvars file inside

# required version of terraform and providers: 
 - required_version = "~> 1.1.0"
 - required_providers = "~> 3.74.0"

 # explanation struckture inside backend.tf file:
 # - backet name: terraform-project-95
 # - dev/terraform.tfstate: dev folder and terraform state file will be created after run terraform apply -var-file=dev.tfvars inside s3
 # - s3 bucket region is: us-east-1

 # Components of vpc for dev environmenta:
 # - create vpc(10.0.0.0/16)
 # - create 3 pub and 3 private route tables
 # - create 3 pub and 3 private subnets(pub cider blocks: 10.0.1-3.0/24 and private cider blocks: 10.0.10-12.0/24)
 # - create internet gateway wich has 2 way connection(ingress and egress) and you need attach this IG to VPC and to Route Tables
 # - create nat gateway wich has only 1 way connection(egress) 
 # - 3 pub route tables has a: Routes and Subnets Assossiations, to Routes you connect IGW(id internet gateway) and to Subnets Assossiation you connect 3 pub subnets
 # - 3 private route tables has a: Routes and Subnets Assossiations, to Routes you connect NGW(id net gateway) and to Subnets Assossiation you connect 3 private subnets
 # - Connect only 1 pub subnet to NAT Gataway(egress) and Assign an Elastic IP address to the NAT gateway(create this Allocate Elastic IP)
 # - Attach NAT Gateway to 1 private route table(edit Route and Subnets Assossiation) 
 #
 #
