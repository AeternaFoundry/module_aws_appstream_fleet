output "appstream_fleets_id" {
  description = "Map of id values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appstream_fleets_arn" {
  description = "Map of arn values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appstream_fleets_compute_capacity" {
  description = "Map of compute_capacity values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => one(v.compute_capacity) if v.compute_capacity != null && length(v.compute_capacity) > 0 }
}
output "appstream_fleets_created_time" {
  description = "Map of created_time values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "appstream_fleets_description" {
  description = "Map of description values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appstream_fleets_disconnect_timeout_in_seconds" {
  description = "Map of disconnect_timeout_in_seconds values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.disconnect_timeout_in_seconds if v.disconnect_timeout_in_seconds != null }
}
output "appstream_fleets_display_name" {
  description = "Map of display_name values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "appstream_fleets_domain_join_info" {
  description = "Map of domain_join_info values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => one(v.domain_join_info) if v.domain_join_info != null && length(v.domain_join_info) > 0 }
}
output "appstream_fleets_enable_default_internet_access" {
  description = "Map of enable_default_internet_access values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.enable_default_internet_access if v.enable_default_internet_access != null }
}
output "appstream_fleets_fleet_type" {
  description = "Map of fleet_type values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.fleet_type if v.fleet_type != null && length(v.fleet_type) > 0 }
}
output "appstream_fleets_iam_role_arn" {
  description = "Map of iam_role_arn values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.iam_role_arn if v.iam_role_arn != null && length(v.iam_role_arn) > 0 }
}
output "appstream_fleets_idle_disconnect_timeout_in_seconds" {
  description = "Map of idle_disconnect_timeout_in_seconds values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.idle_disconnect_timeout_in_seconds if v.idle_disconnect_timeout_in_seconds != null }
}
output "appstream_fleets_image_arn" {
  description = "Map of image_arn values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.image_arn if v.image_arn != null && length(v.image_arn) > 0 }
}
output "appstream_fleets_image_name" {
  description = "Map of image_name values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "appstream_fleets_instance_type" {
  description = "Map of instance_type values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "appstream_fleets_max_sessions_per_instance" {
  description = "Map of max_sessions_per_instance values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.max_sessions_per_instance if v.max_sessions_per_instance != null }
}
output "appstream_fleets_max_user_duration_in_seconds" {
  description = "Map of max_user_duration_in_seconds values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.max_user_duration_in_seconds if v.max_user_duration_in_seconds != null }
}
output "appstream_fleets_name" {
  description = "Map of name values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appstream_fleets_region" {
  description = "Map of region values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appstream_fleets_state" {
  description = "Map of state values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.state if v.state != null && length(v.state) > 0 }
}
output "appstream_fleets_stream_view" {
  description = "Map of stream_view values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.stream_view if v.stream_view != null && length(v.stream_view) > 0 }
}
output "appstream_fleets_tags" {
  description = "Map of tags values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appstream_fleets_tags_all" {
  description = "Map of tags_all values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appstream_fleets_vpc_config" {
  description = "Map of vpc_config values across all appstream_fleets, keyed the same as var.appstream_fleets"
  value       = { for k, v in aws_appstream_fleet.appstream_fleets : k => one(v.vpc_config) if v.vpc_config != null && length(v.vpc_config) > 0 }
}

