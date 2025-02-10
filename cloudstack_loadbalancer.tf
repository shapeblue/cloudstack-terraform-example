resource "cloudstack_ipaddress" "lb_ip" {
  network_id = cloudstack_network.isolated_net.id
  zone       = var.zone
}

resource "cloudstack_loadbalancer_rule" "lb_rule" {
  name          = var.lb_name
  algorithm     = var.lb_algorithm
  private_port  = var.lb_private_port
  public_port   = var.lb_public_port
  network_id    = cloudstack_network.isolated_net.id
  ip_address_id = cloudstack_ipaddress.lb_ip.id
  member_ids    = [for instance in cloudstack_instance.instances : instance.id]
}
