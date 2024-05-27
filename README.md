# Terraform module for CIVO Kubernetes

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_civo"></a> [civo](#requirement\_civo) | >= 1.0.40 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_civo"></a> [civo](#provider\_civo) | >= 1.0.40 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [civo_firewall.this](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/firewall) | resource |
| [civo_kubernetes_cluster.this](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/kubernetes_cluster) | resource |
| [civo_kubernetes_node_pool.this](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/kubernetes_node_pool) | resource |
| [civo_network.this](https://registry.terraform.io/providers/civo/civo/latest/docs/data-sources/network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorized_networks"></a> [authorized\_networks](#input\_authorized\_networks) | Authorized networks for Kubernetes API server | `set(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | name of the kubernetes cluster | `string` | n/a | yes |
| <a name="input_cni"></a> [cni](#input\_cni) | The cni for the k3s to install | `string` | `"cilium"` | no |
| <a name="input_k3s_version"></a> [k3s\_version](#input\_k3s\_version) | supported version of the k3s cluster | `string` | `""` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | name of the existing network | `string` | `""` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Number of nodes into the cluster | `number` | n/a | yes |
| <a name="input_node_instance_size"></a> [node\_instance\_size](#input\_node\_instance\_size) | Instance type of the target nodes. | `string` | `"g3.k3s.medium"` | no |
| <a name="input_node_label"></a> [node\_label](#input\_node\_label) | Label of the main node pool | `string` | `"core"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Addons node pools | <pre>list(object({<br>    label      = string<br>    node_count = number<br>    size       = string<br>    region     = string<br>  }))</pre> | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which the cluster should be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `string` | `"terraform"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
