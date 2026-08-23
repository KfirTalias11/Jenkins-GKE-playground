output "project_id" {
  value = var.project_id
}

output "cluster_region" {
  value = var.region
}

output "vpc_name" {
  value = local.vpc_name
}
output "subnet_name" {
  value = local.subnet_name
}

output "cluster_name" {
  value = local.cluster_name
}

output "node_pool_name" {
  value = local.node_pool_name
}