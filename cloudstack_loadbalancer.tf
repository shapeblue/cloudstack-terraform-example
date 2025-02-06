resource "cloudstack_ipaddress" "lb_ip" {
  network_id = cloudstack_network.isolated_net.id
  zone       = "London-Zone"
}

resource "cloudstack_loadbalancer_rule" "lb_rule" {
  name          = "terraform-lb"
  algorithm     = "roundrobin"
  private_port  = 80
  public_port   = 80
  network_id    = cloudstack_network.isolated_net.id
  ip_address_id = cloudstack_ipaddress.lb_ip.id
  member_ids    = [for instance in cloudstack_instance.instances : instance.id]
}