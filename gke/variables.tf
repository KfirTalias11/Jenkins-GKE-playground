variable "project_id" {
  type = string
}

variable "name" {
  type = string
}

variable "region" {
  type    = string
  default = "europe-central2"
}

variable "min_node_count" {
  type    = number
  default = 1
}

variable "max_node_count" {
  type    = number
  default = 5
}

variable "machine_type" {
  type    = string
  default = "e2-standard-4"
}

variable "preemptible" {
  type    = bool
  default = true
}

variable "disk_size_gb" {
  type    = number
  default = 20
}