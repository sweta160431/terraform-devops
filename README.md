# Terraform AWS Environment Infrastructure

This repository contains Terraform code to deploy AWS EC2 infrastructure. It provisions resources like EC2 instances and security groups. This README provides an overview of the project and instructions for deploying and managing the infrastructure.

## Prerequisites
Before you begin, ensure you have the following installed and configured:
- **Terraform** installed on your local machine.
- **AWS CLI** installed and configured with valid credentials and a default region.

## Project Setup
### 1. Create a Directory for the Terraform Project
```sh
mkdir terraform-project
cd terraform-project
```

### 2. Create Terraform Configuration Files
Inside the project directory, create the following files:
- `provider.tf` – Defines the AWS provider.
- `ec2.tf` – Contains EC2 instance configurations.
- `variables.tf` – Stores variable definitions.
- `output.tf` – Defines the outputs (such as instance IPs).

### 3. Initialize Terraform
Run the following command to initialize Terraform:
```sh
terraform init
```

### 4. Plan the Infrastructure
Check the execution plan before applying changes:
```sh
terraform plan
```

### 5. Apply the Terraform Configuration
Apply the Terraform configuration to create the infrastructure:
```sh
terraform apply
```
When prompted, confirm by entering `yes`.

![Screenshot (17)](https://github.com/user-attachments/assets/62eb684a-396f-477e-8406-2b75474fbaee)


![Screenshot (18)](https://github.com/user-attachments/assets/759b7aba-55b1-48d5-a038-57a61543772b)


## Managing the Infrastructure
You can manage the infrastructure using the following Terraform commands:
- **View execution plan:**
  ```sh
  terraform plan
  ```
- **Apply changes:**
  ```sh
  terraform apply
  ```
- **Destroy resources:**
  ```sh
  terraform destroy
  ```
  Confirm by entering `yes` when prompted.

## Cleaning Up
To completely remove the infrastructure and free resources:
```sh
terraform destroy
```
This will delete all resources created by Terraform.

![Screenshot (19)](https://github.com/user-attachments/assets/64f9424c-8f1e-4b77-98a7-96d1d7aa364f)


![Screenshot (20)](https://github.com/user-attachments/assets/295b5fca-892a-4d77-8613-89512fe5d44c)



---

This repository helps automate AWS infrastructure deployment using Terraform. Feel free to modify configurations as needed.

