<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.117.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aks"></a> [aks](#module\_aks) | ../../modules/aks-cluster | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.aks_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_pool_name"></a> [default\_pool\_name](#input\_default\_pool\_name) | Azure default pool name | `string` | `"default"` | no |
| <a name="input_k8s_cluster_name"></a> [k8s\_cluster\_name](#input\_k8s\_cluster\_name) | AKS cluster name | `string` | `"test-aks"` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | K8s version | `string` | `"1.32.4"` | no |
| <a name="input_region"></a> [region](#input\_region) | Define The region to host the cluster in | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | `"test-rg"` | no |
| <a name="input_subnet_pod_default_pool"></a> [subnet\_pod\_default\_pool](#input\_subnet\_pod\_default\_pool) | The subnet for the pods within AKS for the default pool | `string` | `"10.10.10.0/20"` | no |
| <a name="input_subscriptionID"></a> [subscriptionID](#input\_subscriptionID) | n/a | `any` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Name for Azure Virtual Network | `string` | `"vnet-0"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->