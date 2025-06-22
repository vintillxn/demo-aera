<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ../../modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_rg"></a> [aks\_rg](#input\_aks\_rg) | AKS Resource Group Name | `string` | `"test"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"West EU"` | no |
| <a name="input_network_subnet"></a> [network\_subnet](#input\_network\_subnet) | Subnets | `map(string)` | <pre>{<br/>  "aks-0": "10.10.0.0/20"<br/>}</pre> | no |
| <a name="input_subscriptionID"></a> [subscriptionID](#input\_subscriptionID) | n/a | `string` | n/a | yes |
| <a name="input_vnetwork"></a> [vnetwork](#input\_vnetwork) | Define The Network CIDR | `list(any)` | <pre>[<br/>  "10.0.0.0/10"<br/>]</pre> | no |
| <a name="input_vnetwork_name"></a> [vnetwork\_name](#input\_vnetwork\_name) | Define The Name of the Network | `string` | `"vnet-0"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->