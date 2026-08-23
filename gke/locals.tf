locals {
  vpc_name    = "${var.name}-vpc"
  subnet_name = "${var.name}-subnet"

  cluster_name   = "${var.name}-cluster"
  node_pool_name = "${var.name}-pool"
}