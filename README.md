# AWS EC2 Instances and Kubernetes Cluster Deployment

This repository provides scripts and configurations to deploy multiple EC2 instances on AWS using Terraform and set up a Kubernetes cluster on those instances using Ansible.

## Prerequisites

Before getting started, ensure you have the following prerequisites installed and configured:

1. **AWS CLI**: Install the AWS CLI and configure it with your AWS credentials.

2. **SSH Key Pair**: Create an SSH key pair and save the private key (`aws-key.pem`) in the repository root. Make sure to set appropriate permissions (`chmod 400 aws-key.pem`).

3. **Terraform**: Install Terraform on your local machine.

4. **Ansible**: Install Ansible on your local machine.

## Usage

Follow the steps below to deploy EC2 instances and configure a Kubernetes cluster:

### 1. Initialize Terraform

```bash
terraform init
```
### 2. Deploy EC2 Instances

```bash
terraform apply
```
### 3. Run Ansible Playbook

```bash
ansible-playbook -i hosts ansible/k8s-configure.yml
```

# Note

Ensure that you have the necessary AWS credentials configured for both Terraform and Ansible.

Review and customize the Terraform configuration files (main.tf, variables.tf) based on your requirements.

The aws-key.pem file in the repository root is used as the SSH private key for accessing EC2 instances. Make sure to replace it with your own private key.

The Ansible playbook (ansible/k8s-configure.yml) is responsible for setting up the Kubernetes cluster. Customize it if needed.

# Clean Up

```bash
terraform destroy
```
# License

This project is licensed under the MIT License.



