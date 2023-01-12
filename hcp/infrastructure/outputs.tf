output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "AWS VPC ID"
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
  description = "AWS VPC CIDR block"
}

output "vpc_public_subnets" {
  value       = module.vpc.public_subnets[0]
  description = "AWS public subnet"
}

output "vpc_cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "subnet_id" {
  value       = module.vpc.public_subnets[0]
  description = "AWS public subnet"
}

output "hcp_consul_cluster_id" {
  value       = hcp_consul_cluster.main.cluster_id
  description = "HCP Consul ID"
}

output "hcp_consul_security_group_id" {
  value       = module.aws_hcp_consul.security_group_id
  description = "AWS Security group for HCP Consul"
}

output "cluster_id" {
  description = "EKS cluster ID."
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = module.eks.config_map_aws_auth
}

output "region" {
  description = "AWS region"
  value       = var.aws_region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}

output "hcp_consul_private_endpoint" {
  description = "HCP Consul Auto-join address"
  value = hcp_consul_cluster.main.consul_private_endpoint_url
}

output "hcp_consul_config" {
  description = "HCP Consul Configuration"
  sensitive = true
  value = base64decode(hcp_consul_cluster.main.consul_config_file)
}

output "hcp_consul_root_token" {
  description = "HCP Consul root token"
  sensitive = true
  value = hcp_consul_cluster.main.consul_root_token_secret_id
}

output "hcp_consul_ca_file" {
  description = "HCP Consul CA certificate file"
  sensitive = true
  value = base64decode(hcp_consul_cluster.main.consul_ca_file)
}