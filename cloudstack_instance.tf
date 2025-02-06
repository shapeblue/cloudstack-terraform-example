data "http" "remote_userdata" {
  url = "https://raw.githubusercontent.com/shapeblue/assets/main/userdata-script"
}

resource "cloudstack_instance" "instances" {
  for_each         = toset(var.instance_names)
  name             = each.value
  service_offering = "Small Instance"
  template         = cloudstack_template.template1.id
  network_id       = cloudstack_network.isolated_net.id
  zone             = "London-Zone"
  expunge          = true
  user_data        = data.http.remote_userdata.response_body
}
