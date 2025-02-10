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
Update your **terraform.tfvars** file with the following values to customize your environment. Replace the placeholder values with your actual configuration:
```
# CloudStack API Details
api_url            = "<YOUR-CLOUDSTACK-ADDRESS_AND_PORT>/client/api"
api_key            = "<YOUR-CLOUDSTACK-API-KEY>"
secret_key         = "<YOUR-CLOUDSTACK-SECRET-KEY>"

# General Configuration
zone               = "<CLOUDSTACK-ZONE>"

# Template Details
template_url       = "<TEMPLATE-URL>"
os_type            = "<OPERATING-SYSTEM-TYPE>"
template_name      = "<TEMPLATE-NAME>"
hypervisor         = "<HYPERVISOR-TYPE>"
format             = "<TEMPLATE-FORMAT>"

# Instances Details
instances_list     = ["<INSTANCE-NAME-1>", "<INSTANCE-NAME-2>", "<INSTANCE-NAME-3>"]
service_offering   = "<SERVICE-OFFERING>"
userdata_url       = "<USERDATA-SCRIPT-URL>"

# Network
network_name       = "<NETWORK-NAME>"
cidr               = "<CIDR-BLOCK>"
network_offering   = "<NETWORK-OFFERING>"

# Load Balancer Details
lb_name            = "<LOAD-BALANCER-NAME>"
lb_algorithm       = "<LOAD-BALANCER-ALGORITHM>"
lb_private_port    = <PRIVATE-PORT>
lb_public_port     = <PUBLIC-PORT>

# Firewall Ingress Rules Details
fw_cidr_list       = "<INGRESS-CIDR-LIST>"
fw_protocol        = "<PROTOCOL>"
fw_ports           = "<INGRESS-PORTS>"

# Firewall Egress Rules Details
egress_cidr_list   = ["<EGRESS-CIDR-LIST>"]
egress_protocol    = "<EGRESS-PROTOCOL>"
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
