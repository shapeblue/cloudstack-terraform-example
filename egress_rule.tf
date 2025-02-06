resource "cloudstack_egress_firewall" "default" {
  network_id = cloudstack_network.isolated_net.id

  rule {
    cidr_list = ["10.0.0.0/24"]
    protocol  = "all"
  }
}