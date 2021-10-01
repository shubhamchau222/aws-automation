# aws-automation


## Installation of terrafrom 

[![Download terrafrom ](https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Terraform_Logo.svg/330px-Terraform_Logo.svg.png)](https://www.terraform.io/downloads.html)

```bash
    download terrafrom through given link according to your system config 
    and Install it
```

## Basic command in use 
```bash  
  $ terraform   # to check terraform installed or not 
  $ terraform init 
  $ terraform plan 
  $ terraform apply

```

## Creating the project setup 
go to your desired directory ..

```bash 
  $ mkdir project
  $ cd ./project
  $ conda create -n env_name python=3.6 -y 
  $ conda activate env_name

  ```

## Creating the file for automating AWS 

```bash 

  $ touch main.tf    #create any filename having extension .tf

```

## let's configure the aws acnt with our project 

 - put the Information of Your cloud provider 
 - here we're using "AWS" cloud 
 - while putting your credentials , ensure the security 


```bash 
        provider "aws" {
          region = "ap-south-1"  # mumbai region 
          access_key = "put-your-accesskey-here"
          secret_key = "put_your_scret_key here"

        }

```

- let's discuss the format 

```
# how to provide the resources 

resource "<provider>_<resource type >" "name" {
         config options.....

                key = "value"
               key = "value"

         }
```


## how to initialized Ec2 instances ? 

- How to Initializeed EC2 instance Automatically through code ? 
- "aws_instance" => provider , insatnce => name of service 
-  "shubham" => Name of the instance

```bash 
resource "aws_instance" "my-first-server" {
   ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"

  tags = {
    Name = "Shubham"
  }
}
```

- commands to initialized instance

```bash 
   $ terraform init    # initialized terraform 
   $ terraform plan     # to detect the changes 
   $ terraform apply    # to apply the changes you've done ( initialized instance)

```
- all the Information of Your EC2 instance will be added infile <.terraform.lock.hcl>

