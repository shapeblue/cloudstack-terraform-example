resource "cloudstack_network" "isolated_net" {
  name             = var.network_name
  cidr             = var.cidr
  network_offering = var.network_offering
  zone             = var.zone
}