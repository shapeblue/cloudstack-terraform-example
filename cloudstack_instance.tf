resource "cloudstack_instance" "instances" {
  for_each         = toset(var.instances_list)
  name             = each.value
  service_offering = var.service_offering
  template         = cloudstack_template.template1.id
  network_id       = cloudstack_network.isolated_net.id
  zone             = var.zone
  expunge          = true

  # Update user_data to use response_body
  user_data        = data.http.userdata.response_body
}

data "http" "userdata" {
  url = var.userdata_url
}
