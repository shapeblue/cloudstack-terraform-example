resource "cloudstack_network" "isolated_net" {
  name             = "TERRAFORM-isolated"
  cidr             = "10.0.0.0/24"
  network_offering = "DefaultIsolatedNetworkOfferingWithSourceNatService"
  zone             = "London-Zone"
}