variable "region" {
  type        = string
  description = "Define The region to host the cluster in"
  default     = "West Europe"
}

variable "k8s_cluster_name" {
  type        = string
  description = "AKS cluster name"
  default     = "test-aks"
}

variable "k8s_version" {
  type        = string
  description = "K8s version"
  default     = "1.32.4"
}

variable "default_pool_name" {
  type        = string
  description = "Azure default pool name"
  default     = "default"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
  default     = "test-rg"
}

variable "subnet_pod_default_pool" {
  type        = string
  description = "The subnet for the pods within AKS for the default pool"
  default     = "10.10.10.0/20"
}

variable "vnet_name" {
  type        = string
  description = "Name for Azure Virtual Network"
  default     = "vnet-0"
}

variable "subscriptionID" {}