resource "cloudstack_firewall" "allow_http" {
  ip_address_id = cloudstack_ipaddress.lb_ip.id
  rule {
    cidr_list     = ["0.0.0.0/0"]
    protocol      = "tcp"
    ports	  = [ "80" ]
    }
}
