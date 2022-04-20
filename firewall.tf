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
