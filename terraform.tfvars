# File: terraform.tfvars

# CloudStack API Details Vars
api_url    = "<YOUR-CLOUDSTACK-ADDRESS_AND_PORT>/client/api"
api_key    = "<YOUR-CLOUDSTACK-API-KEY>"
secret_key = "<YOUR-CLOUDSTACK-SECRET-KEY>"

# General Configuration
# Zone Var
zone       = "<CLOUDSTACK-ZONE>"

# Template Vars
template_url       = "http://dl.openvm.eu/cloudstack/debian/x86_64/debian-11-kvm.qcow2.bz2"
os_type	       	   = "Debian GNU/Linux 11 (64-bit)"
template_name  	   = "Debian 11 x86_64"
hypervisor     	   = "KVM"
format	       	   = "QCOW2"

# Instances Vars
instances_list     = ["web-01", "web-02", "web-03"]
service_offering   = "Small Instance"
userdata_url 	   = "https://raw.githubusercontent.com/shapeblue/assets/main/userdata-script"


# Network Vars
network_name       = "TERRAFORM-isolated"
cidr               = "10.0.0.0/24"
network_offering   = "DefaultIsolatedNetworkOfferingWithSourceNatService"

# Load Balancer Vars
lb_name            = "terraform-lb"
lb_algorithm       = "roundrobin"
lb_private_port    = 80
lb_public_port     = 80

# Firewall Rules Vars
fw_cidr_list       = "0.0.0.0/0"
fw_protocol        = "tcp"
fw_ports	   = "80"

# Egress Rules Vars
egress_cidr_list   = ["10.0.0.0/24"]
egress_protocol    = "all"
