variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "node_pool_name" {
  type = string
}
variable "min_node_count" {
  type = number
}
variable "max_node_count" {
  type = number
}

variable "machine_type" {
  type = string
}

variable "preemptible" {
  type = bool
}

variable "disk_size_gb" {
  type = string
}
