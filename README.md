
# Terraform EC2 Deployment with LocalStack

## Project Overview

This project demonstrates how to use Terraform (Infrastructure as Code) to provision and manage an EC2 instance using LocalStack.

Instead of creating resources in real AWS, LocalStack provides an AWS-compatible local environment for practising cloud infrastructure deployment.

## Architecture

Terraform → AWS Provider → LocalStack → EC2 Instance

## Technologies Used

- Terraform
- AWS Provider
- LocalStack
- AWS CLI
- Docker
- Ubuntu (WSL)

## Project Structure

```text
terraform-practice/
├── main.tf
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

## Infrastructure Details

| Property | Value |
|---|---|
| Cloud Provider | AWS (simulated using LocalStack) |
| Resource | EC2 Instance |
| Instance Type | t2.micro |
| Region | us-east-1 |
| AMI | ami-1e749f67 |

## Prerequisites

- Ubuntu or Linux environment
- Terraform installed
- Docker installed
- LocalStack running
- AWS CLI installed

## Deployment Steps

### 1. Start LocalStack

Verify LocalStack:

```bash
localstack status
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Format Configuration

```bash
terraform fmt
```

### 4. Validate Configuration

```bash
terraform validate
```

### 5. Preview Infrastructure Changes

```bash
terraform plan
```

### 6. Deploy Infrastructure

```bash
terraform apply
```

Type `yes` when prompted.

### 7. View Terraform Outputs

```bash
terraform output
```

### 8. Inspect Terraform State

```bash
terraform state list
terraform state show aws_instance.devops_server
```

## Terraform Concepts Practised

- Infrastructure as Code (IaC)
- Providers and Resources
- Terraform Initialization
- Formatting and Validation
- Execution Plans
- Infrastructure Deployment
- Variables and Outputs
- Terraform State Management
- Git and GitHub Integration

## Cleanup

To remove the resources managed by Terraform:

```bash
terraform destroy
```

Review the destruction plan and confirm only when you intend to delete the resources.

## Important Notes

- This project uses LocalStack, not real AWS infrastructure.
- The AWS access key and secret key in the provider configuration are dummy credentials for LocalStack.
- Terraform state files are excluded from Git using `.gitignore`.
- The AMI used in this learning exercise is an old Ubuntu image and is not recommended for production workloads.

## Author

Vishwa Shelke

Learning Cloud Computing, AWS, Terraform and DevOps through hands-on projects.
