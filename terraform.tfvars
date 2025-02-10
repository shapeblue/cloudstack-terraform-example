# File: terraform.tfvars

# CloudStack API Details
api_url            = "http://10.1.35.175:8080/client/api"
api_key        	   = "7P7GJW6-hh0ws4feRxNhtRYxvLiX8JOYJ4AT07esXjs0GXjOx-1uotaXyNOUqoz9Mp7gAKs3Sy_tOKHxIRPDEg"
secret_key     	   = "cH5Pw-jn5CIKeY_JkQzgk_nSMZLj6ArsUpDlo5tuSW4zSK7mIun4upf9UkgvTa2xwJHZFpeViu9TBwzaV-eE-w"

# General Configuration
zone               = "London-Zone"

# Template details
template_url       = "http://dl.openvm.eu/cloudstack/debian/x86_64/debian-11-kvm.qcow2.bz2"
os_type	       	   = "Debian GNU/Linux 11 (64-bit)"
template_name  	   = "Debian 11 x86_64"
hypervisor     	   = "KVM"
format	       	   = "QCOW2"

# Instances Details
instances_list     = ["web-01", "web-02", "web-03"]
service_offering   = "Small Instance"
userdata_url 	   = "https://raw.githubusercontent.com/shapeblue/assets/main/userdata-script"


# Network
network_name       = "TERRAFORM-isolated"
cidr               = "10.0.0.0/24"
network_offering   = "DefaultIsolatedNetworkOfferingWithSourceNatService"

# Load Balancer Details
lb_name            = "terraform-lb"
lb_algorithm       = "roundrobin"
lb_private_port    = 80
lb_public_port     = 80

# Firewall Ingress Rules Details
fw_cidr_list       = "0.0.0.0/0"
fw_protocol        = "tcp"
fw_ports	   = "80"

# Firewall Egress Rules Details
egress_cidr_list   = ["10.0.0.0/24"]
egress_protocol    = "all"
