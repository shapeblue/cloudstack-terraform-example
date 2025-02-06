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

### Configure CloudStack credentials
Edit main.tf and replace "<YOUR-CLOUDSTACK-ADDRESS_AND_PORT>", "<YOUR-CLOUDSTACK-API-KEY>", and "<YOUR-CLOUDSTACK-SECRET-KEY>" with your actual values:
```hcl
variable "api_url" {
  default = "<YOUR-CLOUDSTACK-ADDRESS_AND_PORT>/client/api"
}
variable "api_key" {
  default = "<YOUR-CLOUDSTACK-API-KEY>"
}
variable "secret_key" {
  default = "<YOUR-CLOUDSTACK-SECRET-KEY>"
}
```

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
