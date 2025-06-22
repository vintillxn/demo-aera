<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.aks_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_rg"></a> [aks\_rg](#input\_aks\_rg) | AKS Resource Group Name | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location where should reside | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | The cidr range of the subnet | `list(any)` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Define Name of the Virtual Network | `string` | n/a | yes |
| <a name="input_network_subnet"></a> [network\_subnet](#input\_network\_subnet) | Subnets | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->