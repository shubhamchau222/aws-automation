#author : Shubham Chaudhari..

# we need to write the cloud provider info  
# Configure the AWS Provider
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# for connecting the server through the code we need to add security credentials 

provider "aws" {
  region = "ap-south-1"  # mumbai region 
  access_key = "put-your-accesskey-here"
  secret_key = "put_your_scret_key here"

}


# how to provide the resources 

# resource "<provider>_<resource type >" "name" {
#         config options.....

#                 key = "value"
#                 key = "value"

#          }


# How to Initializeed EC2 instance Automatically through code ? 
# "aws_instance" => provider , insatnce => name of service 
# "shubham" => Name of the instance
resource "aws_instance" "my-first-server" {
   ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"

  tags = {
    Name = "Shubham"
  }
}


# terraform init 
# terraform plan 
# terraform apply 