resource "cloudstack_firewall" "ingress" {
  ip_address_id = cloudstack_ipaddress.lb_ip.id
  rule {
    cidr_list  = [var.fw_cidr_list]
    protocol   = var.fw_protocol
    ports      = [var.fw_ports]
  }
}