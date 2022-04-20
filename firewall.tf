resource "civo_firewall" "this" {
  name       = var.cluster_name
  network_id = data.civo_network.this.id
}

resource "civo_firewall_rule" "access" {
  firewall_id = civo_firewall.this.id
  protocol    = "tcp"
  start_port  = "6443"
  end_port    = "6443"
  cidr        = var.authorized_networks
  direction   = "ingress"
  label       = "kubernetes-api-server"
}