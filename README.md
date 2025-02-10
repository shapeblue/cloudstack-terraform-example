# Terraform CloudStack Example

This repository provides a Terraform configuration for deploying instances, a load balancer, and firewall rules in **Apache CloudStack**.

## Requirements
- Terraform installed ([Download](https://developer.hashicorp.com/terraform/downloads))
- CloudStack API access (API URL, API Key, and Secret Key)
- A working CloudStack environment

## Setup
### Clone the repository
```sh
git clone https://github.com/shapeblue/cloudstack-terraform-example.git
cd cloudstack-terraform-example
```

### Configure CloudStack variables
Update your **terraform.tfvars** file with the following values to customize your environment. These are the only values you need to configure to customize the deployment:
```
# CloudStack API Details
api_url            = "<YOUR-CLOUDSTACK-ADDRESS_AND_PORT>/client/api"
api_key            = "<YOUR-CLOUDSTACK-API-KEY>"
secret_key         = "<YOUR-CLOUDSTACK-SECRET-KEY>"

# General Configuration
# Zone Var
zone               = "<CLOUDSTACK-ZONE>"
```
Other variables are already pre-configured in the terraform.tfvars file with default values. If needed, you can update them to fit your requirements.

### Initialize Terraform
```sh
terraform init
```

### Validate the configuration
```sh
terraform validate
```

### Deploy the infrastructure
```sh
terraform apply -auto-approve
```

### Deploy the infrastructure
```sh
terraform apply -auto-approve
```

## Accessing Instances
Once deployed, Terraform will output the public IP. 	
1. Open a web browser.
2. Enter the public IP in the address bar:

```
http://PUBLIC-IP/
```
3. Refresh the page periodically to see the request being served by different instances.
## Destroying the Infrastructure
To remove all created resources:

```sh
terraform destroy -auto-approve
```
