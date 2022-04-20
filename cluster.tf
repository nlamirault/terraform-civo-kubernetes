# Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "civo_kubernetes_cluster" "cluster" {
  name               = var.cluster_name
  kubernetes_version = var.k3s_version
  network_id         = data.civo_network.this.id
  firewall_id        = civo_firewall.this.id
  cni                = var.cni

  pools {
    node_count = var.node_count
    size       = var.node_instance_size
  }

  tags = var.tags
}
