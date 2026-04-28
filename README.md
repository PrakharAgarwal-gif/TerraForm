# Terraform AWS Infrastructure

This repository contains Terraform configurations to deploy AWS infrastructure including VPC, Application Load Balancer (ALB), and EC2 instances.

## Prerequisites

- Terraform >= 1.14.8
- AWS CLI configured with appropriate credentials
- AWS account with necessary permissions

## Modules

- **vpc**: Creates VPC with public and private subnets
- **alb**: Sets up Application Load Balancer
- **ec2**: Launches EC2 instances in private subnets, attached to ALB

## Usage

1. Clone the repository
2. Navigate to the directory
3. Initialize Terraform: `terraform init`
4. Plan the deployment: `terraform plan`
5. Apply the changes: `terraform apply`

## Variables

- `region`: AWS region
- `vpc_cidr`: CIDR block for VPC
- `public_subnets`: List of public subnet CIDRs
- `private_subnets`: List of private subnet CIDRs
- `ami`: AMI ID for EC2 instances
- `instance_type`: Instance type for EC2

## Outputs

- `alb_dns_name`: DNS name of the ALB
- `vpc_id`: ID of the VPC
- `PublicSubnetIDs`: IDs of public subnets
- `PrivateSubnetIDs`: IDs of private subnets

## Backend

Uses S3 backend for state management.
