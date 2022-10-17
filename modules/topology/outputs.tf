output "left_vpc_cidr" {
  description = "VPC CIDR left"
  value       = module.vpc_left.vpc_cidr_block
}

output "left_instance_id" {
  description = "Instance ID in the left VPC"
  value       = module.instance_left.id
}

output "left_instance_eni" {
  description = "ENI ID in of the client instance"
  value       = module.instance_left.primary_network_interface_id
}

output "left_private_route_tables" {
  value = module.vpc_left.private_route_table_ids
}

output "right_apigw_vpce_eni" {
  description = "ENI ID of the VPC endpoint of the private API Gateway in the right VPC"
  value       = one(aws_vpc_endpoint.api_gateway.network_interface_ids)
}

output "right_apigw_dns_entry" {
  value = local.api_gateway_dns_name
}

output "transit_gateway_id" {
  value = module.tgw.ec2_transit_gateway_id
}

output "transit_gateway_vcp_attachment_ids" {
  value = module.tgw.ec2_transit_gateway_vpc_attachment_ids
}

output "transit_gateway_route_table_id" {
  value = module.tgw.ec2_transit_gateway_route_table_id
}