resource "civo_kubernetes_cluster" "cluster" {
    name = var.cluster_name
    num_target_nodes = var.node_count
    target_nodes_size = var.node_size
    network_id = data.civo_network.this.id
    firewall_id = civo_firewall.this.id
}
