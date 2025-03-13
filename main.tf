terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "jenkins-terra" "ec2" {
    ami = "ami-04aa00acb1165b32a"
    instance_type = "t2.micro"
    key_pair_name = "resume"
    availability_zone = "us-east-1a"
    tags {
        Name = "myproject"
        env = "dev"
    }

}
