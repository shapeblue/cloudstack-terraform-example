resource "cloudstack_template" "template1" {
  name       = "Debian 11"
  os_type    = "Debian GNU/Linux 11 (64-bit)"
  zone       = "London-Zone"
  url        = "http://dl.openvm.eu/cloudstack/debian/x86_64/debian-11-kvm.qcow2.bz2"
  format     = "QCOW2"
  hypervisor = "KVM"
}
