variable "vnetwork_name" {
  type        = string
  description = "Define The Name of the Network"
  default     = "vnet-0"
}

variable "vnetwork" {
  type        = list(any)
  description = "Define The Network CIDR"
  default     = ["10.0.0.0/10"]
}
variable "network_subnet" {
  type        = map(string)
  description = "Subnets"
  default = {
    aks-0 = "10.10.0.0/20"
  }
}

variable "aks_rg" {
  type        = string
  description = "AKS Resource Group Name"
  default     = "test"
}

variable "subscriptionID" {
  type = string
}

variable "location" {
  type    = string
  default = "West EU"
}