variable "network_name" {
  type        = string
  description = "Define Name of the Virtual Network"
}

variable "network" {
  type        = list(any)
  description = "The cidr range of the subnet"
}

variable "network_subnet" {
  type        = map(string)
  description = "Subnets"
}

variable "aks_rg" {
  type        = string
  description = "AKS Resource Group Name"
}

variable "location" {
  type        = string
  description = "Location where should reside"
}