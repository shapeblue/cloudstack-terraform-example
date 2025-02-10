resource "cloudstack_template" "template1" {
  name       = var.template_name
  os_type    = var.os_type
  zone       = var.zone
  url        = var.template_url
  format     = var.format
  hypervisor = var.hypervisor
}