resource "cloudstack_egress_firewall" "default" {
  network_id = cloudstack_network.isolated_net.id

  rule {
    cidr_list = var.egress_cidr_list
    protocol  = var.egress_protocol
  }
}