variable "region" {
  type        = string
  description = "Define The region to host the cluster in"
}

variable "k8s_cluster_name" {
  type        = string
  description = "AKS cluster name"
}

variable "k8s_version" {
  type        = string
  description = "K8s version"
}

variable "default_pool_name" {
  type        = string
  description = "Azure default pool noame"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "vnet_name" {
  type        = string
  description = "Name for Azure Virtual Network"
}

variable "vnet_subnet_id" {}