# CloudStack API Details
variable "api_url" {
  description = "CloudStack API URL (e.g., http://your-cloudstack-server/client/api)"
  type        = string
}

variable "api_key" {
  description = "CloudStack API Key for authentication"
  type        = string
}

variable "secret_key" {
  description = "CloudStack Secret Key for authentication"
  type        = string
}

# General Configuration
variable "zone" {
  description = "CloudStack Zone where resources will be deployed"
  type        = string
}

# Template Details
variable "template_url" {
  description = "URL for the template to be downloaded"
  type        = string
}

variable "os_type" {
  description = "Operating System type of the template"
  type        = string
}

variable "template_name" {
  description = "Name of the template"
  type        = string
}

variable "hypervisor" {
  description = "Hypervisor type for the template (e.g., KVM)"
  type        = string
}

variable "format" {
  description = "Format of the template (e.g., QCOW2)"
  type        = string
}

# Instances Details
variable "instances_list" {
  description = "List of instance names to create"
  type        = list(string)
}

variable "service_offering" {
  description = "Service offering for the instances (e.g., compute size)"
  type        = string
}

variable "userdata_url" {
  description = "URL for the user data script to initialize instances"
  type        = string
}

# Network Configuration
variable "network_name" {
  description = "Name of the isolated network"
  type        = string
}

variable "cidr" {
  description = "CIDR block for the isolated network"
  type        = string
}

variable "network_offering" {
  description = "Network offering to use for the isolated network"
  type        = string
}

# Load Balancer Details
variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "lb_algorithm" {
  description = "Load balancing algorithm (e.g., roundrobin)"
  type        = string
}

variable "lb_private_port" {
  description = "Private port for the load balancer"
  type        = number
}

variable "lb_public_port" {
  description = "Public port for the load balancer"
  type        = number
}

# Firewall Ingress Rules Details
variable "fw_cidr_list" {
  description = "CIDR range for ingress firewall rules"
  type        = string
}

variable "fw_protocol" {
  description = "Protocol for ingress firewall rules (e.g., tcp, udp)"
  type        = string
}

variable "fw_ports" {
  description = "Ports to allow for ingress firewall rules"
  type        = string
}

# Firewall Egress Rules Details
variable "egress_cidr_list" {
  description = "List of CIDR ranges for egress firewall rules"
  type        = list(string)
}

variable "egress_protocol" {
  description = "Protocol for egress firewall rules (e.g., all, tcp, udp)"
  type        = string
}
